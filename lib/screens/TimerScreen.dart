import 'package:flutter/material.dart';
import 'package:simple_timer/components/TimerCell.dart';
import 'dart:async';

class TimerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimerScreenState();
  }
}

class TimerScreenState extends State<TimerScreen> {
  static const duration = const Duration(seconds: 1);

  int secondsPassed = 0;
  bool isActive = false;

  Timer timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null)
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });

    int seconds = secondsPassed % 60;
    int minutes = secondsPassed ~/ 60;
    int hours = secondsPassed ~/ (60 * 60);

    return MaterialApp(
      title: 'Flutter Timer',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Timer"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TimerCell("HH", hours.toString().padLeft(2, "0")),
                  TimerCell("MM", minutes.toString().padLeft(2, "0")),
                  TimerCell("SS", seconds.toString().padLeft(2, "0")),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  child: Text(isActive ? "Stop" : "Start"),
                  onPressed: () {
                    setState(() {
                      isActive = !isActive;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}