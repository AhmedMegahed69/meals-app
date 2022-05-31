// ignore_for_file: use_key_in_widget_constructors

import 'package:app_meal/models/meals.dart';
import 'package:app_meal/widgets/meal_items.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoritmeal;

  FavoriteScreen(this.favoritmeal);

  @override
  Widget build(BuildContext context) {
    if (favoritmeal.isEmpty) {
      return Center(
        child: Text("ليس لديك حتي الان وجبات مفضلة بعد "),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItems(
            id: favoritmeal[index].id,
            title: favoritmeal[index].title,
            imageUrl: favoritmeal[index].imageUrl,
            duration: favoritmeal[index].duration,
            complexity: favoritmeal[index].complexity,
            affordability: favoritmeal[index].affordability,
          );
        },
        itemCount: favoritmeal.length,
      );
    }
  }
}
