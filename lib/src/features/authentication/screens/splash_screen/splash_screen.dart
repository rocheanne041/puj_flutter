import 'package:flutter/material.dart';
import 'package:puj_ticket/src/constants/colors.dart';
import 'package:puj_ticket/src/constants/image_strings.dart';
import 'package:puj_ticket/src/constants/sizes.dart';
import 'package:puj_ticket/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 160,
            left: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Center(
                  child: Text(
                    tAppName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: tPrimaryColor,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    tAppTagLine,
                    style: TextStyle(fontSize: 25, color: tPrimaryColor),
                  ),
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 2.5,
            child: const Image(
              width: 650,
              height: 650,
              image: AssetImage(tSplashImage1),
            ),
          ),
        ],
      ),
    );
  }
}
