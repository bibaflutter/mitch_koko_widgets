import 'package:flutter/material.dart';

class RichTextLesson extends StatelessWidget {
  const RichTextLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: 'Mitch Koko',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'This is a very longcaption, I wonder what will happen when it reaches the end of screen',
                      style: TextStyle(
                        color: Colors.grey
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}