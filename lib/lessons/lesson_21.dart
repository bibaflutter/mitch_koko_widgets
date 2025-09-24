import 'package:flutter/material.dart';

class StackLesson extends StatelessWidget {
  const StackLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.pink,
              alignment: Alignment.center,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink[300]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}