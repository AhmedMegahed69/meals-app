// ignore: duplicate_ignore
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, unused_import, prefer_final_fields

import 'package:app_meal/dummy_data.dart';
import 'package:app_meal/models/meals.dart';
import 'package:app_meal/screens/categories_screen.dart';
import 'package:app_meal/screens/filter_screen.dart';
import 'package:app_meal/screens/meal_detail_screen.dart';
import 'package:app_meal/screens/tabs_screen.dart';
import '../screens/category_meal.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  Map filtters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegeterian': false,
  };

  List<Meal> availableMeal = DUMMY_MEALS;
  List<Meal> favoriteMeal = [];

  void setfilters(Map _filtterDate) {
    setState(() {
      filtters = _filtterDate;

      availableMeal = DUMMY_MEALS.where((element) {
        if (filtters['gluten'] == true && element.isGlutenFree == false) {
          return false;
        }

        if (filtters['lactose'] == true && element.isLactoseFree == false) {
          return false;
        }

        if (filtters['vegan'] == true && element.isVegan == false) {
          return false;
        }

        if (filtters['vegeterian'] == true && element.isVegetarian == false) {
          return false;
        }

        return true;
      }).toList();
    });
  }

  void togglefavorite(String mealid) {
    final existingindex = favoriteMeal.indexWhere((meal) => meal.id == mealid);

    if (existingindex >= 0) {
      setState(() {
        favoriteMeal.removeAt(existingindex);
      });
    } else {
      setState(() {
        favoriteMeal.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealid));
      });
    }
  }

  bool ismealfavorite(String id) {
    return favoriteMeal.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromARGB(255, 120, 230, 230),
                ),
                bodyText2: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontFamily: "Raleway"),
              ),
          canvasColor: Color.fromARGB(255, 255, 255, 255),
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 247, 9, 140),
            onPrimary: Color.fromARGB(255, 235, 215, 209),
            secondary:  Color.fromARGB(255, 251, 255, 0),
            onSecondary: Color.fromARGB(255, 7, 6, 5),
            background: Color.fromARGB(255, 120, 230, 230),
            error: Color.fromARGB(255, 221, 13, 13),
            onError: Color.fromARGB(255, 196, 29, 29),
            onBackground: Color.fromARGB(255, 126, 194, 199),
            onSurface: Color.fromARGB(255, 247, 9, 140),
            surface: Color.fromARGB(255, 247, 9, 140),
          )),
      routes: {
        '/': (context) => TabScreen(favoriteMeal),
        CategoryMealScreen.routename: (context) =>
            CategoryMealScreen(availableMeal),
        MealDetailsScreen.routename: (context) =>
            MealDetailsScreen(togglefavorite, ismealfavorite),
        FilterScreen.routename: (context) => FilterScreen(filtters, setfilters)
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP MEAL"),
      ),
      body: Container(),
    );
  }
}
