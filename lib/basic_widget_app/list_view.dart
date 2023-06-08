import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Example"),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Anwer Ahmed"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            onTap: () {},
            splashColor: Colors.purple[50],
            leading: Icon(Icons.person),
            title: Text("Abdualziz"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ischack", style: GoogleFonts.kalam()),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Karim "),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mohamed"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rand "),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sultan  "),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Anwer  "),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abdullah  "),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Anwer Ahmed"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abdualziz"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ischack"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Karim ",
              style: GoogleFonts.indieFlower(
                fontSize: 40,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mohamed"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rand "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sultan  "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Anwer  "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abdullah  "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Anwer Ahmed"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abdualziz"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ischack"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Karim "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mohamed"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rand "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sultan  "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Anwer  "),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abdullah  "),
          ),
        ],
      ),
    );
  }
}
