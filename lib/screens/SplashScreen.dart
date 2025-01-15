import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:healthconnect/screens/Homepage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Optional background color
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Animated Splash Screen with Lottie animation
          AnimatedSplashScreen(
            splash: Lottie.asset(
              'assets/jsonfile/docsplash.json',
            ),
            nextScreen: Homepage(),
            duration: 3000,
            splashTransition: SplashTransition.fadeTransition,
            curve: Curves.easeOut,
            animationDuration: Duration(seconds: 2),
            splashIconSize: 1000,
          ),

          // Text widget to show below the Lottie animation
          Positioned(
            bottom: 50,  // Position text below the animation (adjust the value)
            child: Text(
              "Lifelayer",
              style: TextStyle(
                fontSize: 30, // Text size
                fontWeight: FontWeight.bold, // Bold text
                color: Colors.blue, // Text color
                fontFamily: 'Roboto', // Optional font family
              ),
            ),
          ),
        ],
      ),
    );
  }
}
