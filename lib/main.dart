import 'package:flutter/material.dart';
import 'package:simple_timer/screens/TimerScreen.dart';

void main() => runApp(TimerApp());

class TimerApp extends StatelessWidget {
  final String appName = "Simple Timer";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new TimerScreen(),
    );
  }

}
