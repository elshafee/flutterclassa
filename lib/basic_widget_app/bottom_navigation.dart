import 'package:android_classa/basic_widget_app/basic_wigets.dart';
import 'package:android_classa/basic_widget_app/list_view.dart';
import 'package:android_classa/basic_widget_app/toast_example.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentindex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List<Widget> widgetScreens = [
    Text("Home"),
    Text("ListView"),
    Text("Toast"),
  ];

  final _widgetList = [
    BasicWidgets(),
    ListViewExample(),
    ToastWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetList[currentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: currentindex,
        iconSize: 25,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label: 'GridView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Toast',
          ),
        ],
      ),
    );
  }
}
