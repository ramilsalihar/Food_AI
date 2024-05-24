import 'package:flutter/material.dart';
import 'package:food_ai/domain/dummy_models.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/recipe_card.dart';

class SaveBody extends StatelessWidget {
  const SaveBody({super.key});

  @override
  Widget build(BuildContext context) {
    final data = DummyModels();
    return ListView(children: [
      RecipeCard(
        title: data.recipe.name,
        description: data.recipe.description,
        calories: data.recipe.calories.toString(),
        fat: data.recipe.fat.toString(),
        protein: data.recipe.protein.toString(),
        carbs: data.recipe.carbs.toString(),
      ),
      RecipeCard(
        title: data.recipe.name,
        description: data.recipe.description,
        calories: data.recipe.calories.toString(),
        fat: data.recipe.fat.toString(),
        protein: data.recipe.protein.toString(),
        carbs: data.recipe.carbs.toString(),
      ),
    ]);
  }
}
