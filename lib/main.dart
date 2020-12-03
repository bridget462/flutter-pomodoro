import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'countdown_timer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      home: FocusTimer(
        autoStart: false,
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.red,
      ),
    );
  }
}

class FocusTimer extends StatelessWidget {
  final bool autoStart;

  FocusTimer({this.autoStart = true});
  @override
  Widget build(BuildContext context) {
    return CountDownTimer(
      autoStart: autoStart,
      isFocusMode: true,
      initialCountDownDuration: Duration(minutes: 25),
      remainingCircleBackgroundColor: Colors.amber[700],
      remainingCircleIndicatorColor: Colors.grey[800],
    );
  }
}

class BreakTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CountDownTimer(
      isFocusMode: false,
      initialCountDownDuration: Duration(minutes: 5),
      remainingCircleBackgroundColor: Colors.lightBlue[300],
      remainingCircleIndicatorColor: Colors.grey[800],
    );
  }
}
