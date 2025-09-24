import 'package:flutter/material.dart';

class UserInputLesson extends StatefulWidget {
  UserInputLesson({super.key});

  @override
  State<UserInputLesson> createState() => _UserInputLessonState();
}

class _UserInputLessonState extends State<UserInputLesson> {
  final textController = TextEditingController();
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //display text
            Expanded(
              child: Container(
                child: Center(
                  child: Text(userInput, style: TextStyle(fontSize: 35)),
                ),
              ),
            ),
            //text input
            Center(
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: 'What\`s on your mind',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      //clear whats currently in the textfield
                      textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  //update our string variable to get new user
                  setState(() {
                    userInput = textController.text;
                  });
                  
                },
                color: Colors.blue,
                child: Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
