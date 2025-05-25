import 'package:flutter/material.dart';
import 'screens/categories.dart';
import 'screens/categories_meals.dart';
import 'utills/app_routes.dart';
import 'screens/meal_detail.dart';

void main() => runApp(const Meals());

class Meals extends StatelessWidget {
  const Meals({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const Categories(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMeals(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetail(),
      },
    );
  }
}
