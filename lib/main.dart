import 'package:flutter/material.dart';
import 'package:mechanify/screens/onboarding_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 1));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'Assets/images/animation.gif',
          fit: BoxFit.cover,
        ),
        splashIconSize: 360.0,
        nextScreen: OnBoardingScreen(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
