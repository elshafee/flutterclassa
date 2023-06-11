import 'package:flutter/material.dart';
import 'package:flutter_classb/auth_system/signup_screen.dart';
import 'package:flutter_classb/home_screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/dashatars.png',
                height: 190,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefix: const Icon(
                    Icons.email,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text("Email Address"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefix: const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.password,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text("Password"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      Transition(
                          child: const SignUp(),
                          transitionEffect: TransitionEffect.FADE));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    "Don't have an account? SingUp here",
                    style: GoogleFonts.lobster(),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const HomeScreen(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                  child: const Text("Login")),
              // InkWell(
              //   onTap: () {
              //     print("Hello");
              //   },
              //   child: Center(
              //     child: Container(
              //       width: MediaQuery.of(context).size.width * 0.8,
              //       height: 30,
              //       decoration: BoxDecoration(
              //         color: Colors.deepPurple,
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       child: const Center(
              //         child: Text(
              //           "Login",
              //           style: TextStyle(color: Colors.white),
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
