import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:storeapp/screens/home_screen.dart';

class AnimatedSplash extends StatefulWidget {
  const AnimatedSplash({super.key});
  static String id = 'animatedSplash';

  @override
  State<AnimatedSplash> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(

          child: Lottie.network(
             "https://lottie.host/8aafd2c0-6337-4640-b3db-b449e11a2d8d/A8mfgSGCfF.json",

          ),
        ),
        nextScreen:HomeScreen(),
        duration:  3500,
      backgroundColor: Colors.white,
      splashIconSize: 500,

    );
  }
}
