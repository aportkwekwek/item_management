import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_management/src/constants/const_images.dart';
import 'package:item_management/src/constants/const_sizes.dart';
import 'package:item_management/src/constants/const_string.dart';
import 'package:item_management/src/features/authentication/controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                top: 100,
                left: splashScreenController.animate.value ? 30 : -100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      applicationName,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      applicationTagLine,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: 100,
                right: splashScreenController.animate.value ? -20.0 : -200.0,
                width: 450.0,
                child: const Image(image: AssetImage(splashScreenImage))),
          ),
          Positioned(
              bottom: 40,
              right: defaultSize,
              child: Container(
                width: defaultSize,
                height: defaultSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor),
              ))
        ],
      ),
    );
  }
}
