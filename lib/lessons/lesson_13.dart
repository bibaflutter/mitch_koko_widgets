import 'package:flutter/material.dart';
import 'package:playlist_with_widgets/lessons/tabs/first_tab.dart';
import 'package:playlist_with_widgets/lessons/tabs/second_tab.dart';
import 'package:playlist_with_widgets/lessons/tabs/third_tab.dart';

class TabBarLesson extends StatelessWidget {
  const TabBarLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text(
            'T A B B A R',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                    children: [
                      //1ST TAB
                      FirstTab(),
                      //2 NDTAB
                      SeconsTab(),
                      //3RD TAB
                      ThirdTub(),
                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}