import 'package:get/get.dart';
import 'package:item_management/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 50000));
    Get.to(const WelcomeScreen());
  }
}
