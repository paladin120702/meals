import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../components/categories_meals_item.dart';

class CategoriesMeals extends StatelessWidget {
  const CategoriesMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return CategoriesMealsItem(categoryMeals[index]);
        },
      ),
    );
  }
}
