import 'package:flutter/material.dart';

class Lesson8 extends StatefulWidget {
  const Lesson8({super.key});

  @override
  State<Lesson8> createState() => _Lesson8State();
}

class _Lesson8State extends State<Lesson8> {

  //Value

  int numberOfTimesTapped = 0;

  //Methods

  void _increaseNumber() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  void minusValue() {
    setState(() {
      numberOfTimesTapped --;
    });
  }

  //UI

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tapped ' + numberOfTimesTapped.toString() + ' Times',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: _increaseNumber,
                child: Container(
                  color: Colors.green[200],
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'TAP HERE',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: minusValue,
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Minus Button',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}