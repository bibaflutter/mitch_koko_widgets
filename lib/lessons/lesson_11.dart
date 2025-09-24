import 'package:flutter/material.dart';
import 'package:playlist_with_widgets/lessons/pages/first_page.dart';
import 'package:playlist_with_widgets/lessons/pages/secong_page.dart';

class DrawerLesson extends StatelessWidget {
  const DrawerLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blue[200],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Text(
                  'L O G O',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'PAGE 1',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'PAGE 2',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Drawer Example"),
      ),
      body: const SafeArea(
        child: Center(
          child: Text("Главная страница"),
        ),
      ),
    );
  }
}
