import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyExchangeScreen(),
    );
  }
}

class CurrencyExchangeScreen extends StatefulWidget {
  @override
  _CurrencyExchangeScreenState createState() => _CurrencyExchangeScreenState();
}

class _CurrencyExchangeScreenState extends State<CurrencyExchangeScreen> {
  String fromCurrency = 'USD';
  String toCurrency = 'EUR';
  double amountToConvert = 0.0;
  double convertedAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Exchange'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Currency Exchange Calculator',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownButton<String>(
                  value: fromCurrency,
                  onChanged: (newValue) {
                    setState(() {
                      fromCurrency = newValue!;
                    });
                  },
                  items: <String>['USD', 'EUR', 'GBP', 'JPY', 'AUD']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Icon(Icons.swap_horiz),
                DropdownButton<String>(
                  value: toCurrency,
                  onChanged: (newValue) {
                    setState(() {
                      toCurrency = newValue!;
                    });
                  },
                  items: <String>['USD', 'EUR', 'GBP', 'JPY', 'AUD']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  amountToConvert = double.tryParse(value) ?? 0.0;
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter amount to convert',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement currency conversion logic here
                setState(() {
                  // Replace this with your currency conversion logic
                  // For now, it simply multiplies the amount by 1.0 as a placeholder
                  convertedAmount = amountToConvert * 1.0;
                });
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Converted Amount: $convertedAmount $toCurrency',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
