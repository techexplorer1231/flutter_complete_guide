import 'package:flutter/material.dart';

import './dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categodyId;
  // final String categodyTitle;

  // CategoryMealsScreen(this.categodyId, this.categodyTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categodyId = routeArgs['id'];
    final categodyTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categodyId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categodyTitle),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length),
    );
  }
}
