import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoritesScreen({
    required this.favoriteMeals,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text(
          'В избранном ничего нет!',
        ),
      );
    } else {
      return  ListView.builder(
          itemCount: favoriteMeals.length,
          itemBuilder: (ctx, index) {
            var categoryMeal = favoriteMeals[index];

            return MealItem(
              id: categoryMeal.id,
              title: categoryMeal.title,
              affordability: categoryMeal.affordability,
              duration: categoryMeal.duration,
              imageUrl: categoryMeal.imageUrl,
              complexity: categoryMeal.complexity,
              // removeItem: null,
            );
          });
    }
  }
}
