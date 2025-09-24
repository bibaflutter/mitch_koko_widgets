import 'package:flutter/material.dart';

class Lesson7 extends StatelessWidget {
  const Lesson7({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ), 
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ), 
          ),
        ),
      ),
    );
  }
}