import 'dart:async';
import 'package:flutter/material.dart';

class TimerLesson extends StatefulWidget {
  const TimerLesson({super.key});

  @override
  State<TimerLesson> createState() => _TimerLessonState();
}

class _TimerLessonState extends State<TimerLesson> {
  //variable
  int timeLeft = 5;

  // + TIMER METHOD

void startCountUp() {
  Timer.periodic(Duration(seconds: 1), (timer) {
    if(timeLeft <= 99) {
      setState(() {
        timeLeft++;
      });
    } else {
      print('bug');
    }
  });
}

  // - TIMER METHOD
  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
       timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              timeLeft == 0  & timeLeft <= 99? 'DONE' : timeLeft.toString(),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: _startCountDown,
                  child: Text(
                    'S T A R T : DICREASE',
                    style: TextStyle(
                      color: Colors.white,
                      ),
                  ),
                  color: Colors.deepPurple,
                ),
                SizedBox(width: 20),
                MaterialButton(
                  onPressed: startCountUp,
                  child: Text(
                    'S T A R T : INCREASE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
