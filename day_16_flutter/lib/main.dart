import 'package:day_16_flutter/stop_watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StopwatchApp());
}


class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StopWatch(),
    );
  }
}