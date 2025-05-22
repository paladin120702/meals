import 'package:flutter/material.dart';
import 'screens/categories.dart';
import 'screens/categories_meals.dart';
import 'utills/app_routes.dart';

void main() => runApp(Meals());

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        primarySwatch: Colors.pink,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => Categories(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMeals(),
      },
    );
  }
}
