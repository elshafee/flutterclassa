import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWidget extends StatefulWidget {
  const ToastWidget({super.key});

  @override
  State<ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<ToastWidget> {
  void _showToast() {
    Fluttertoast.showToast(
        msg: "Email sent",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 15.0,
        timeInSecForIosWeb: 4,
        gravity: ToastGravity.TOP_RIGHT,
        backgroundColor: Colors.green,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          onPressed: _showToast,
          child: const Text(
            "Show Toast",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
