import 'package:flutter/material.dart';

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
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print("Hello");
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  print("Hello");
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
