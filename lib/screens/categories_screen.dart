// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, duplicate_ignore

import 'package:app_meal/dummy_data.dart';
import 'package:app_meal/widgets/category_items.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES
            .map(
              (cat_data) =>
                  CategoryItems(cat_data.id, cat_data.title, cat_data.color),
            )
            .toList(),
      ),
    );
  }
}
