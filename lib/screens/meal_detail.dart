import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import '../components/meal_detail_item.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: MealDetailItem(meal));
  }
}
