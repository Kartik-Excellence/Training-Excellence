import 'package:flutter/material.dart';
import 'package:testapp/timerWidget.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timer App'),
        ),
        body: TimerWidget(),
      ),
    ));
