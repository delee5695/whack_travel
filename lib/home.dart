import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Weather Information',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.9, // Set the width to 90% of the screen
            child: Card(
              margin: EdgeInsets.symmetric(
                  horizontal: 16.0), // Equal border on both sides
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Temperature: 22°C'),
                    Text('Condition: Sunny'),
                    Image.asset('assets/sunny.png'), // Add your image asset
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Time Difference',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.9, // Set the width to 90% of the screen
            child: Card(
              margin: EdgeInsets.symmetric(
                  horizontal: 16.0), // Equal border on both sides
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Time difference: -5 hours'),
                    // Image.asset('assets/clock.png'), // Add your image asset
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
