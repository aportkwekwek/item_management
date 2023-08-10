// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_management/src/features/authentication/controller/onboarding_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final onboardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
            liquidController: onboardingController.controller,
            enableSideReveal: true,
            pages: onboardingController.onboardingPages,
            onPageChangeCallback: onboardingController.checkPage),
        Obx(
          () => Positioned(
              top: 50,
              right: 30,
              child: TextButton(
                onPressed: onboardingController.animateSkip,
                child: Text(
                  "Skip",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )),
        ),
        Obx(
          () => Positioned(
            bottom: 70.0,
            child: OutlinedButton(
              onPressed: onboardingController.animateToNextSlide,
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black12),
                  padding: EdgeInsets.all(10),
                  shape: CircleBorder(),
                  backgroundColor: Colors.white),
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        ),
        Obx(
          () => Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
                activeIndex: onboardingController.controller.currentPage,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: Colors.deepPurpleAccent, dotHeight: 5.0)),
          ),
        )
      ]),
    );
  }
}
