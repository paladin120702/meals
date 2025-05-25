import 'package:flutter/material.dart';

class MealDetailItem extends StatelessWidget {
  final dynamic meal;
  const MealDetailItem(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              width: 250,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(meal.ingredients[index]),
                    ),
                  );
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Steps',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              width: 250,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('${(index + 1)}'),
                        ),
                        title: Text(meal.steps[index]),
                      ),
                      const Divider()
                    ],
                  );
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
