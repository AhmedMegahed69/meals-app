// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable


import 'package:app_meal/models/meals.dart';
import 'package:app_meal/widgets/meal_items.dart';
import 'package:flutter/material.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routename = "category_meals";
  final List<Meal> availablemeal;

  const CategoryMealScreen(this.availablemeal);

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  late String? categorytitle;
  late List<Meal> displayMeal;
  @override
  void didChangeDependencies() {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryid = routeArg['id'];
    categorytitle = routeArg['title'];
    displayMeal = widget.availablemeal.where((element) {
      return element.categories.contains(categoryid);
    }).toList();
    super.didChangeDependencies();
  }

  void removemeal(String mealId) {
    setState(() {
      displayMeal.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItems(
            id: displayMeal[index].id,
            title: displayMeal[index].title,
            imageUrl: displayMeal[index].imageUrl,
            duration: displayMeal[index].duration,
            complexity: displayMeal[index].complexity,
            affordability: displayMeal[index].affordability,
            
          );
        },
        itemCount: displayMeal.length,
      ),
    );
  }
}
