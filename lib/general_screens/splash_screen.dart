import 'package:android_classa/auth_system/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          Transition(
              child: const LoginScreen(),
              transitionEffect: TransitionEffect.FADE));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/dashatars.png'),
          ),
          const SizedBox(
            height: 100,
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
