// // import 'package:flutter/material.dart';

// // class AnimatedContainerLesson extends StatefulWidget {
// //   const AnimatedContainerLesson({super.key});

// //   @override
// //   State<AnimatedContainerLesson> createState() =>
// //       _AnimatedContainerLessonState();
// // }

// // class _AnimatedContainerLessonState extends State<AnimatedContainerLesson> {
// //   double boxHeight = 100;
// //   double boxWidth = 100;
// //   var boxColor = Colors.deepPurple;
// //   double boxX = -1;
// //   double boxY= -1;

// //   void _expandBox() {
// //     setState(() {
// //       boxHeight = 300;
// //       boxWidth = 300;
// //     });
// //   }

// //   void _changeBoxColor() {
// //     setState(() {
// //       boxColor = Colors.pink;
// //     });
// //   }

// //   void _moveBox() {
// //     setState(() {
// //       boxX = 1;
// //       boxY = 1;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: _changeBoxColor,
// //       child: Scaffold(
// //         backgroundColor: Colors.deepPurple[200],
// //         body: Center(
// //           child: AnimatedContainer(
// //             alignment: Alignment(boxX, boxY),
// //             duration: Duration(seconds: 1),
// //             height: boxHeight,
// //             width: boxWidth,
// //             color: boxColor,
// //             child: Container(
// //               height: 100,
// //               width: 100,
// //               color: Colors.deepPurple,
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class AnimatedContainerLesson2 extends StatefulWidget {
//   const AnimatedContainerLesson2({super.key});

//   @override
//   State<AnimatedContainerLesson2> createState() =>
//       _AnimatedContainerLesson2State();
// }

// class _AnimatedContainerLesson2State extends State<AnimatedContainerLesson2> {

//   double boxWidth = 150;
//   double boxHeight = 150;

//   void grove() {
//     setState(() {
//       boxHeight = 250;
//       boxWidth = 250;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.deepPurple[100],
//         body: Column(
//           children: [
//             Spacer(),
//             AnimatedContainer(
//               width: boxWidth,
//               height: boxHeight,
//               duration: Duration(seconds: 1),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//               color: Colors.deepPurple,
//               ),
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // CONATINER 1
//                 InkWell(
//                   onTap: ,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(
//                       color: Colors.deepPurple[300],
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Grow',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // CONATINER 2
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple[300],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Color',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 // CONATINER 3
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple[300],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Move',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                       ),
//                     ),
//                 ),
//               ],
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AnimatedBoxDemo extends StatefulWidget {
  @override
  State<AnimatedBoxDemo> createState() => _AnimatedBoxDemoState();
}

class _AnimatedBoxDemoState extends State<AnimatedBoxDemo> {
  bool grow = false;
  bool changeColor = false;
  bool move = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // БОЛЬШОЙ контейнер
          AnimatedAlign(
            duration: const Duration(milliseconds: 500),
            alignment: move ? Alignment.bottomRight : Alignment.topCenter,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: grow ? 200 : 100,
              height: grow ? 200 : 100,
              color: changeColor ? Colors.orange : Colors.purple,
            ),
          ),
          const Spacer(),
          // КНОПКИ
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => grow = !grow),
                child: const Text("GROW"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => setState(() => changeColor = !changeColor),
                child: const Text("COLOR"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => setState(() => move = !move),
                child: const Text("MOVE"),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
