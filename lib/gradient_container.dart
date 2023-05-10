

























// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:puj_ticket/styled_text.dart';

// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.color1, this.color2, {super.key});
//   final Color color1;
//   final Color color2;

//   void rollDice() {}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: [color1, color2], begin: startAlignment, end: endAlignment),
//       ),
//       child: Center(
//           child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assets/images/dice-2.png',
//             width: 200,
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           ElevatedButton(
//               onPressed: rollDice,
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(40))),
//               child: const Padding(
//                 padding: EdgeInsets.fromLTRB(100, 18, 100, 18),
//                 child: Text('Submit',
//                     style: TextStyle(color: Colors.white, fontSize: 20)),
//               ))
//         ],
//       )),
//     );
//   }
// }
