import 'package:flutter/material.dart';
import '../models/category.dart';
import '../components/categories_meals_item.dart';
import '../models/meal.dart';

class CategoriesMeals extends StatelessWidget {
  final List<Meal> meals;
  const CategoriesMeals(this.meals, {super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = meals.where((meal) {
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
