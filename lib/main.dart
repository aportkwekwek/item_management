import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_management/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:item_management/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: SplashScreen());
  }
}
