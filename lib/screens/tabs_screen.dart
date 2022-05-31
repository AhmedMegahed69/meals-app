// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:app_meal/models/meals.dart';
import 'package:app_meal/widgets/main_drawar.dart';

import './categories_screen.dart';
import './favorite_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  final List<Meal> favoritmeal;

  const TabScreen(this.favoritmeal);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
   late List _page;
  int _selectpageindex = 0;
  @override
  void initState() {
  _page=[
    {
      "page": CategoriesScreen(),
      "title": "Categories",
    },
    {
      "page": FavoriteScreen(widget.favoritmeal),
      "title": "Your Favorite",
    }
  ];
    super.initState();
  }
  void _selectpage(int value) {
    setState(() {
      _selectpageindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_page[_selectpageindex]['title']),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 231, 65, 120),
        onTap: _selectpage,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite")
        ],
        currentIndex: _selectpageindex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 230, 255, 6),
      ),
      body: _page[_selectpageindex]["page"],
    );
  }
}
