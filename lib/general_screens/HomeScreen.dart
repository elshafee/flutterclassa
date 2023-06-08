import 'package:android_classa/utils/drawer_util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawe(),
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
    );
  }
}
