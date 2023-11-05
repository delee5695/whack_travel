import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String getRandomString() {
      var random = Random();
      var chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
      return String.fromCharCodes(Iterable.generate(
          10, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
    }

    ;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Grid Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("MA, USA\n1:42 PM"),
                  Text("+14 hrs"),
                  Text("Seoul, South Kroea\n3:42 AM"),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text('Sun Nov 5'),
                  Image.network(
                      'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather06-512.png',
                      height: 150),
                  Text('61°F | 36°F'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Mon'),
                      Image.network(
                          'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather04-512.png',
                          height: 50),
                      Text('60°F | 40°F'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Tue'),
                      Image.network(
                          'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather06-512.png',
                          height: 50),
                      Text('49°F | 47°F'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Wed'),
                      Image.network(
                          'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather01-512.png',
                          height: 50),
                      Text('64°F | 40°F'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Thu'),
                      Image.network(
                          'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png',
                          height: 50),
                      Text('46°F | 35°F'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Fri'),
                      Image.network(
                          'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png',
                          height: 50),
                      Text('47°F | 42°F'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
