import 'package:flutter/material.dart';
import 'package:puj_ticket/src/constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [Image(image: AssetImage(tWelcomeScreenImage))],
        ),
      ),
    );
  }
}
