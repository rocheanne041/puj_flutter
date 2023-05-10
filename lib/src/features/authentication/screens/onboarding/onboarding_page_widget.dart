import 'package:flutter/material.dart';
import 'package:puj_ticket/src/constants/sizes.dart';
import 'package:puj_ticket/src/constants/text_strings.dart';
import 'package:puj_ticket/src/features/authentication/models/model_onboarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                model.subTitle,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Text(
            model.counterText,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 80.0,
          )
        ],
      ),
    );
  }
}
