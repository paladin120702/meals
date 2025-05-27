import 'package:flutter/material.dart';
import '../utills/app_routes.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key});

  Widget _item(IconData icon, String label, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 18,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final width = media.width;
    final height = media.height;

    return Drawer(
      child: Column(
        children: [
          Container(
            height: height * 0.095,
            width: double.infinity,
            padding: EdgeInsets.all(height * 0.01),
            color: Colors.amber,
            alignment: Alignment.bottomLeft,
            child: Text(
              'Vamos cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: width * 0.05,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
          _item(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          ),
          _item(
            Icons.settings,
            'Configurações',
            () => Navigator.of(context).pushNamed(AppRoutes.SETTINGS),
          ),
        ],
      ),
    );
  }
}
