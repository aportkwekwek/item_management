import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_management/src/features/authentication/screens/home_screen/home_screen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/const_colors.dart';
import '../../../constants/const_images.dart';
import '../../../constants/const_string.dart';
import '../model/onboarding/onboarding_model.dart';
import '../screens/onboarding_screen/onboarding_page_widget.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get find => Get.find();
  RxInt currentPage = 0.obs;

  final controller = LiquidController();

  void checkPage(int activeRageIndex) {
    currentPage.value = activeRageIndex;
  }

  void animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    if (nextPage == 3) {
      Get.to(() => HomeScreen());
    } else {
      controller.animateToPage(page: nextPage);
    }
  }

  void animateSkip() {
    Get.to(() => HomeScreen());
  }

  final onboardingPages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        imageName: onboardingImg_1,
        imageTitle: onboardingTitle1,
        subtitle: onboardingSubtitle1,
        counterText: onboardingCounter1,
        bgColor: onboardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        imageName: onboardingImg_2,
        imageTitle: onboardingTitle2,
        subtitle: onboardingSubtitle2,
        counterText: onboardingCounter2,
        bgColor: onboardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        imageName: onboardingImg_3,
        imageTitle: onboardingTitle3,
        subtitle: onboardingSubtitle3,
        counterText: onboardingCounter3,
        bgColor: onboardingPage3Color,
      ),
    ),
  ];
}
