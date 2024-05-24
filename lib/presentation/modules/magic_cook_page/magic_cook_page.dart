import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ai/domain/dummy_models.dart';
import 'package:food_ai/presentation/core/widgets/layout/app_scaffold.dart';
import 'package:food_ai/presentation/core/widgets/layout/custom_app_bar.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/recipe_card.dart';
import 'package:food_ai/presentation/modules/magic_cook_page/widgets/ingredients_card.dart';


@RoutePage()
class MagicCookPage extends StatelessWidget {
  const MagicCookPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = DummyModels();
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Write down the ingredients below that you have available',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const IngredientsCard(),
            RecipeCard(
              title: data.recipe.name,
              description: data.recipe.description,
              calories: data.recipe.calories.toString(),
              fat: data.recipe.fat.toString(),
              protein: data.recipe.protein.toString(),
              carbs: data.recipe.carbs.toString(),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomAppBar(
        title: 'Magic cook 🪄',
        leadingIcon: SvgPicture.asset(
          'assets/icons/arrow_back.svg',
          fit: BoxFit.cover,
        ),
        onLeadingIconPressed: () => context.router.pop(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}

