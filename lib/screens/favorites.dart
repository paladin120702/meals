import 'package:flutter/material.dart';
import '../components/drawer_item.dart';
import '../components/categories_meals_item.dart';
import '../models/meal.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const Favorites(this.favoriteMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Favoritos'),
      ),
      drawer: const DrawerItem(),
      body: favoriteMeals.isEmpty
          ? const Center(
              child: Text('Nenhuma refeição favorita!'),
            )
          : ListView.builder(
              itemCount: favoriteMeals.length,
              itemBuilder: (ctx, index) {
                return CategoriesMealsItem(favoriteMeals[index]);
              },
            ),
    );
  }
}
