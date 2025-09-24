import 'package:flutter/material.dart';

class AppBarLesson extends StatelessWidget {
  const AppBarLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          elevation: 0,
          centerTitle: true,
          title: Text(
            'A P P B A R',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            // OPEN MENU
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {}, 
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  ),
                ),
            ],
        ),
      ),
    );
  }
}
