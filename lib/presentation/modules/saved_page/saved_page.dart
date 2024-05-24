import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ai/domain/dummy_models.dart';
import 'package:food_ai/presentation/core/widgets/layout/app_scaffold.dart';
import 'package:food_ai/presentation/core/widgets/layout/custom_app_bar.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/recipe_card.dart';
import 'package:food_ai/presentation/modules/saved_page/recipe_details.dart';
import 'package:food_ai/presentation/core/mixin/dialog_helper.dart';

const String alertText =
    'If something is unclear or missing, write it here, and the AI bot will address this issue 💫';

@RoutePage()
class SavedPage extends StatelessWidget with DialogHelper {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = DummyModels();

    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: kToolbarHeight + 50,
        ),
        child: ListView(
          children: [
            RecipeCard(
              title: data.recipe.name,
              description: data.recipe.description,
              calories: data.recipe.calories.toString(),
              fat: data.recipe.fat.toString(),
              protein: data.recipe.protein.toString(),
              carbs: data.recipe.carbs.toString(),
            ),
            const RecipeDetails()
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          CustomAppBar(
            title: 'Recipe',
            leadingIcon: SvgPicture.asset(
              'assets/icons/arrow_back.svg',
              fit: BoxFit.cover,
            ),
            onLeadingIconPressed: () => context.router.pop(),
            trailingIcon: SvgPicture.asset(
              'assets/icons/save.svg',
              fit: BoxFit.cover,
            ),
            onTrailingIconPressed: () => print('Marked as favorite'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
                padding: const EdgeInsets.all(40),
                child: FloatingActionButton(
                  shape: const CircleBorder(),
                  onPressed: () => showMessageDialog(
                    context: context,
                    message: alertText,
                    actions: [
                      TextField(
                        keyboardType: TextInputType.text,
                        maxLines: null,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Write here',
                          hintStyle: Theme.of(context).textTheme.headlineSmall,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),

                          ),
                        ),
                      )
                    ],
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/edit_icon.svg',
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
