// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:app_meal/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget listtile(String title, IconData icon, var it) {
    return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 25, fontFamily: "RobotoCondensed"),
        ),
        onTap: it);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "COOKING UP!",
              style: TextStyle(
                  fontFamily: "RobotoCondensed",
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  color: Colors.pink),
            ),
            color: Color.fromARGB(255, 211, 161, 23),
          ),
          SizedBox(
            height: 20,
          ),
          listtile("Meal", Icons.restaurant_menu, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          listtile("Filter", Icons.filter_list_alt, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routename);
          })
        ],
      ),
    );
  }
}
