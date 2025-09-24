import 'package:flutter/material.dart';
import 'package:playlist_with_widgets/lessons/pages/images.dart';

class Lesson6 extends StatelessWidget {
  const Lesson6({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            AppImages.cat,
          ),
        ),
      ),
    );
  }
}