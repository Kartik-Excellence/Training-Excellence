import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testapp/myButton.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _timer = 0;
  static const timeout = const Duration(seconds: 1);
  static const milliseconds = const Duration(milliseconds: 1);

  startTimeOut([int millisecodns]) {
    var duration = millisecodns == null ? timeout : milliseconds * millisecodns;
    return new Timer.periodic(duration, increaseTime);
  }

  Timer _timerObj;
  _TimerWidgetState() {
    _timerObj = startTimeOut();
  }

  void increaseTime(Timer timer) {
    setState(() {
      print(_timer);
      _timer++;
    });
  }

  void startTimer() {
    if (_timerObj.isActive) {
    } else
      startTimeOut();
  }

  void stopTimer() {
    _timerObj.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Text(
            "Timer $_timer",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black38, fontSize: 15),
          ),
          MyButton(
            buttonText: "start",
            on_Tap: startTimer,
          ),
          MyButton(
            buttonText: "stop",
            on_Tap: stopTimer,
          ),
        ],
      ),
    );
  }
}
