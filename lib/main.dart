import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:homepage1/Screens/home.dart';

void main() => runApp(new HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splash: Image(
            image: AssetImage('images/redlogo.png'),
            height: 400,
            width: 400,
          ),
          duration: 2000,
          splashTransition: SplashTransition.scaleTransition,
          nextScreen: Home()),
      debugShowCheckedModeBanner: false,
      title: 'Bhoka',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
