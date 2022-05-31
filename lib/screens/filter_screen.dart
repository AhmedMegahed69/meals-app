// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:app_meal/widgets/main_drawar.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routename = "filtter";

  final savefilter;
  Map currentfilter;

  FilterScreen(this.currentfilter, this.savefilter);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isGlutenFree = false;
  bool isLactoseFree = false;
  bool isVegan = false;
  bool isVegetarian = false;

  @override
  void initState() {
    isGlutenFree = widget.currentfilter['gluten'];
    isLactoseFree = widget.currentfilter['lactose'];
    isVegan = widget.currentfilter['vegan'];
    isVegetarian = widget.currentfilter['vegeterian'];

    super.initState();
  }

  Widget buildlisttile(
      String title, String description, bool currentvalue, var func) {
    return SwitchListTile(
      value: currentvalue,
      onChanged: func,
      title: Text(title),
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("الفلتر الخاص بك"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedfilter = {
                'gluten': isGlutenFree,
                'lactose': isLactoseFree,
                'vegan': isVegan,
                'vegeterian': isVegetarian,
              };
              widget.savefilter(selectedfilter);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "اضبط اختيارك للوجبات",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildlisttile(
                  "Glutten",
                  "only include Gluten-free",
                  isGlutenFree,
                  (val) {
                    setState(() {
                      isGlutenFree = val;
                    });
                  },
                ),
                buildlisttile(
                  "Lactose",
                  "only include lactose-free",
                  isLactoseFree,
                  (val) {
                    setState(() {
                      isLactoseFree = val;
                    });
                  },
                ),
                buildlisttile(
                  "Vegan",
                  "only include vegan-free",
                  isVegan,
                  (val) {
                    setState(() {
                      isVegan = val;
                    });
                  },
                ),
                buildlisttile(
                  "vegetarian",
                  "only include vegetarian-free",
                  isVegetarian,
                  (val) {
                    setState(() {
                      isVegetarian = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
