import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meal_details.dart';
import 'package:meals_app/widgets/meal_iteam.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.meals, this.title});

  final String? title;
  final List<Meal> meals;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal: meal)));
  }

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
        itemBuilder:
            (ctx, index) => MealIteam(
              meal: meals[index],
              onSelectMeal: (meal) {
                selectMeal(context, meal);
              },
            ),
      );
    }
    if (title == null) {
      return content;
    }
    return Scaffold(appBar: AppBar(title: Text(title!)), body: content);
  }
}
