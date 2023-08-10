import 'package:flutter/material.dart';
import 'package:item_management/src/features/authentication/model/onboarding/onboarding_model.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({Key? key, required this.model}) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            enableSideReveal: true,
            pages: [
              Container(
                color: model.bgColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(model.imageName),
                      height: mediaSize.height * 0.3,
                      width: mediaSize.height * 2,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            model.imageTitle,
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            model.subtitle,
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          model.counterText,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
