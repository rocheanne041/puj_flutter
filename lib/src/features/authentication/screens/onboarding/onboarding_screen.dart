import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:puj_ticket/src/constants/colors.dart';
import 'package:puj_ticket/src/constants/image_strings.dart';
import 'package:puj_ticket/src/constants/sizes.dart';
import 'package:puj_ticket/src/constants/text_strings.dart';
import 'package:puj_ticket/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:puj_ticket/src/features/authentication/models/model_onboarding.dart';
import 'package:puj_ticket/src/features/authentication/screens/onboarding/onboarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Color(0xFF418E00)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20)),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Color(0xFF418E00), shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text("Skip",
                  style: TextStyle(color: Color(0xFF418E00))),
            ),
          ),
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obController.currentPage.value,
                  effect: const WormEffect(
                      activeDotColor: Color(0xFF418E00), dotHeight: 5.0),
                  count: 3,
                )),
          )
        ],
      ),
    );
  }
}
