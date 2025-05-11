import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_iteam.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.meals, required this.title});

  final String title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Try selecting different category',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealIteam(meal: meals[index]),
      );
    }
    return Scaffold(appBar: AppBar(title: Text(title)), body: content);
  }
}
