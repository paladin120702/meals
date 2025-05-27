import 'package:flutter/material.dart';
import 'package:meals/components/categories_item.dart';
import '../data/dummy_data.dart';
import '../components/drawer_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Categorias'),
      ),
      drawer: const DrawerItem(),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: dummyCategories.map((cat) {
          return CategoriesItem(cat);
        }).toList(),
      ),
    );
  }
}
