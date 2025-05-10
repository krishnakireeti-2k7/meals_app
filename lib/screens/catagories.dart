import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/widgets/category_grid_iteam.dart';

class CatagoriesScreens extends StatelessWidget {
  const CatagoriesScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick your Catagory'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          ),
        children: [
          for (final category in availableCategories)
            CategoryGridIteam(category: category)
        ],
      ),
    );
  }
}
