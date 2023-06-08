import 'package:android_classa/auth_system/signup_screen.dart';
import 'package:android_classa/general_screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/dashatars.png',
              height: 180,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  label: const Text("Email Adress"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    label: const Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    Transition(
                        child: const SignUpScreen(),
                        transitionEffect: TransitionEffect.FADE));
              },
              child: const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("Don't have account? SignUp here")),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    Transition(
                        child: const HomeScreen(),
                        transitionEffect: TransitionEffect.FADE));
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
