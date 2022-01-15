import 'package:flutter/material.dart';
import 'package:preferenciasusuario/src/pages/home_page.dart';
import 'package:preferenciasusuario/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover),
            )),
        ListTile(
          leading: Icon(Icons.pages, color: Colors.blue),
          title: Text('Home'),
          onTap: () {
            Navigator.pushReplacementNamed(context, HomePage.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.people, color: Colors.blue),
          title: Text('People'),
          onTap: () {
            Navigator.pushReplacementNamed(context, HomePage.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.blue),
          title: Text('Settings'),
          onTap: () {
            Navigator.pushReplacementNamed(context, SettingsPage.routeName);
          },
        ),
      ]),
    );
  }
}
