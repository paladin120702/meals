import 'package:flutter/material.dart';
import '../models/filters.dart';

class Settings extends StatefulWidget {
  final Function(Filters) onSettingsChanged;
  final Filters filters;

  const Settings(this.onSettingsChanged, this.filters, {super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late Filters filters;

  @override
  void initState() {
    super.initState();
    filters = widget.filters;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(filters);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Gluten free',
                  'Only gluten-free meals!',
                  filters.isGlutenFree,
                  (value) => setState(() => filters.isGlutenFree = value),
                ),
                _createSwitch(
                  'Lactose free',
                  'Only lactose-free meals!',
                  filters.isLactoseFree,
                  (value) => setState(() => filters.isLactoseFree = value),
                ),
                _createSwitch(
                  'Vegan',
                  'Only vegan meals!',
                  filters.isVegan,
                  (value) => setState(() => filters.isVegan = value),
                ),
                _createSwitch(
                  'Vegetarian',
                  'Only vegetarian meals!',
                  filters.isVegetarian,
                  (value) => setState(() => filters.isVegetarian = value),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
