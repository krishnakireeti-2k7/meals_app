import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/catagory.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/category_grid_iteam.dart';

class CatagoriesScreens extends StatelessWidget {
  const CatagoriesScreens({super.key});

  void _selectCategory(BuildContext context, Category catagory) {
    final filteredMeals =
        dummyMeals
            .where((meal) => meal.categories.contains(catagory.id))
            .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (ctx) => MealsScreen(meals: filteredMeals, title: catagory.title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridIteam(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          ),
      ],
    );
  }
}
