import 'package:flutter/material.dart';

class TimerCell extends StatelessWidget {
  final String label;
  final String value;

  TimerCell(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "$value",
            style: TextStyle(
              color: Colors.white,
              fontSize: 54,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "$label",
            style: TextStyle(
              color: Colors.white70
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(10),
        color: Colors.black87
      ),
    );
  }
}