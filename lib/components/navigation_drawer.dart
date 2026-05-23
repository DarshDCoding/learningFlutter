import 'package:flutter/material.dart';

ListTile navOptions(
  int activeTab,
  int currentOption,
  context,
  IconData icon,
  String title,
  String link,
) {
  return ListTile(
    leading: Icon(icon, color: Colors.black),
    tileColor: activeTab == currentOption
        ? const Color.fromARGB(100, 255, 255, 255)
        : Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    title: Text(title),
    onTap: () {
      Navigator.pop(context);
      Navigator.pushNamed(context, link);
    },
  );
}

class NavDrawer extends StatefulWidget {
  final int currentTab;

  const NavDrawer({super.key, required this.currentTab});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  late int activeTab;

  @override
  void initState() {
    super.initState();
    activeTab = widget.currentTab;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple.shade300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(border: Border()),
              child: Icon(Icons.favorite, size: 48, color: Colors.black),
            ),

            navOptions(activeTab, 1, context, Icons.home, "H O M E", "/"),
            navOptions(
              activeTab,
              2,
              context,
              Icons.person,
              "P R O F I L E",
              "/profile",
            ),

            ListTile(
              tileColor: const Color.fromARGB(117, 239, 154, 154),
              horizontalTitleGap: 16,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
                side: BorderSide(color: Colors.red.shade800, width: 2),
              ),

              leading: Icon(Icons.logout, color: Colors.red.shade800),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.red.shade800),
              ),
              onTap: () {
                print("Logged out");
              },
            ),

            Expanded(
              child: Align(
                alignment: AlignmentGeometry.bottomStart,
                child: navOptions(
                  activeTab,
                  3,
                  context,
                  Icons.settings,
                  "S E T T I N G S",
                  "/settings",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
