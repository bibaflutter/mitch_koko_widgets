import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Alert Dialog lesson

class AlertDialogLesson extends StatefulWidget {
  const AlertDialogLesson({super.key});

  @override
  State<AlertDialogLesson> createState() => _AlertDialogLessonState();
}

class _AlertDialogLessonState extends State<AlertDialogLesson> {
  void _showDialog() {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.pink[100],
        title: Text(
          'Do you agree',
        ),
        content: Text(
          'I Love Flutter'
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Ok'
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Cancel'
            ),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          
          color: Colors.deepPurple[500],
          onPressed: _showDialog,
          child: Text(
            'SHOW DIALOG',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}