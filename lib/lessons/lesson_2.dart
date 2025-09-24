import 'package:flutter/material.dart';

class Lesson2 extends StatelessWidget {
  const Lesson2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepOrangeAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
       ],
      ),
    );
  }
}