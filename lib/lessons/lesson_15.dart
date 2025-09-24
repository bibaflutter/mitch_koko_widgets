import 'package:flutter/material.dart';

class MediaQuerryLesson extends StatelessWidget {
  const MediaQuerryLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Height:' + MediaQuery.of(context).size.height.toString(),

              ),
              Text(
                'Width:' + MediaQuery.of(context).size.height.toString(),
              ),
              Text(
                'Aspect Ratio:' + MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2),
              ),
              Text(
                MediaQuery.of(context).orientation.toString(),
              )
            ],
          ),
        ),
      ),
    );
  }
}