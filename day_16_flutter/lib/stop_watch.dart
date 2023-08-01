import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  late Timer timer;
  bool isTicking = true;
  @override
  void _onTick(Timer timer) {
    setState(() {
      ++seconds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$seconds ${_secondsText()}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Text('Start'),
                  onPressed: isTicking? _startTimer : null,
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.white)
                    ),
                    onPressed: isTicking? null: _stopTimer , child: Text('Stop'))
              ],
            )
          ],
        ),
      ),
    );
  }

  void _startTimer(){
    timer=Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      isTicking=false;
    });
  }

  void _stopTimer(){
    timer.cancel();
    setState(() {
      isTicking=true;
    });
  }
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  String _secondsText() => seconds == 1 ? 'second' : 'seconds';
}
