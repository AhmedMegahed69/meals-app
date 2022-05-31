// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:app_meal/dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routename = " meal_details";

  final togglefavorite;
  final isfavorite;

  const MealDetailsScreen(this.togglefavorite, this.isfavorite);

  Widget build_text(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }

  Widget build_container(Widget child) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey, width: 2),
            borderRadius: BorderRadius.circular(10)),
        height: 150,
        width: double.maxFinite,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context)?.settings.arguments as String;

    final selectedmeal = DUMMY_MEALS.firstWhere(
      (meal) => meal.id == mealid,
    );

    return Scaffold(
      appBar: AppBar(title: Text(selectedmeal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.all(5),
              child: Image.network(
                selectedmeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            build_text(context, "المكونات"),
            build_container(
              ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 6,
                    margin: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                    color: Colors.pink.withOpacity(0.7),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(selectedmeal.ingredients[index]),
                    ),
                  ),
                ),
                itemCount: selectedmeal.ingredients.length,
              ),
            ),
            build_text(context, "طريقة التحضير"),
            build_container(
              ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                    backgroundColor: Colors.pink,
                  ),
                  title: Text(selectedmeal.steps[index]),
                ),
                itemCount: selectedmeal.steps.length,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => togglefavorite(mealid)),
        child: Icon(isfavorite(mealid) ? Icons.star : Icons.star_border),
      ),
    );
  }
}
