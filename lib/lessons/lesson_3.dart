import 'package:flutter/material.dart';

class Lesson3 extends StatelessWidget {
  const Lesson3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.purpleAccent,
              ),
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pinkAccent,
              ),
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            )
          ],
        )
      ),
    );
  }
}