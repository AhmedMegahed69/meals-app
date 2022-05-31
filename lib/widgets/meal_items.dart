// ignore_for_file: use_key_in_widget_constructors, dead_code, prefer_const_constructors, duplicate_ignore, unnecessary_string_interpolations

import 'package:app_meal/models/meals.dart';
import 'package:app_meal/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';

class MealItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;


  const MealItems(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability,
      });

  String get complexitytext {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      case Complexity.Challenging:
        return "Challenging";
        break;
    }
  }

  String get affordabilitytext {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return "Pricey";
        break;
      case Affordability.Luxurious:
        return "Luxurious";
        break;
    }
  }

  void selectmeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MealDetailsScreen.routename, arguments: id)
        .then((value) {
     // if (value != null) {
      //  removeitem(value);
    //  }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectmeal(context);
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(imageUrl,
                      height: 350, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    color: Color.fromARGB(115, 37, 31, 31),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 5,
                    ),
                    Text("$duration  min")
                  ]),
                  Row(children: [
                    Icon(Icons.work),
                    SizedBox(
                      width: 5,
                    ),
                    Text("$complexitytext ")
                  ]),
                  Row(children: [
                    Icon(Icons.attach_money),
                    SizedBox(
                      width: 5,
                    ),
                    Text("$affordabilitytext")
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
