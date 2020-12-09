import 'package:flutter/material.dart';

ThemeData ThemeApps() {
  return ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

Drawer pageDrawer(BuildContext context) {
  final items = <Widget>[];
  items.add(DrawerHeader(
    decoration: BoxDecoration(
      color: Colors.blue,
    ),
    child: Text(
      'Drawer Header',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    ),
  ));

  items.add(ListTile(
    leading: Icon(Icons.home),
    title: Text('Home'),
    onTap: () {
      Navigator.of(context).pushNamedAndRemoveUntil(
          "/home", (Route<dynamic> route) => false);
    },
  ));
  items.add(ListTile(
    leading: Icon(Icons.apps),
    title: Text('UI ELement'),
    onTap: () {
      Navigator.of(context).pushNamedAndRemoveUntil(
          "/uielement", (Route<dynamic> route) => false);
    },
  ));
  items.add(ListTile(
    leading: Icon(Icons.account_circle),
    title: Text('Profile'),
  ));
  return Drawer(child: ListView(padding: EdgeInsets.zero, children: items));
}

String ProjectTitle = "Flutter Demo";
