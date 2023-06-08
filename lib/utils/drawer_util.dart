import 'package:android_classa/general_screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/person.jpg',
              ),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/person.jpg',
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/person.jpg',
                ),
              ),
            ],
            accountName: Text("Ahmad Elshafee"),
            accountEmail: Text("example@gmail.com"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const HomeScreen(),
                      transitionEffect: TransitionEffect.BOTTOM_TO_TOP));
            },
            splashColor: Colors.purple[50],
            title: Text("Home"),
            leading: Icon(Icons.home),
          )
        ],
      ),
    );
  }
}
