import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.deepPurple.shade200,
        child: Column(
          children: [
            DrawerHeader(child: Text("Side Bar")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("P R O F I L E"),
            onTap: () => Navigator.pushNamed(context, "/profile"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: () => Navigator.pushNamed(context, '/settings'),
          )
          ],
        ),
      );
  }
}