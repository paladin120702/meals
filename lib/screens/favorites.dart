import 'package:flutter/material.dart';
import '../components/drawer_item.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Favoritos'),
      ),
      drawer: const DrawerItem(),
      body: const Center(
        child: Text('Minhas Refeições favoritas!'),
      ),
    );
  }
}
