import 'package:flutter/material.dart';
import 'package:playlist_with_widgets/lessons/posts_page_view/post_1.dart';
import 'package:playlist_with_widgets/lessons/posts_page_view/post_2.dart';
import 'package:playlist_with_widgets/lessons/posts_page_view/post_3.dart';

class PageViewLesson extends StatelessWidget {
  PageViewLesson({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(), 
          MyPost3(),
        ],
      ),
    );
  }
}
