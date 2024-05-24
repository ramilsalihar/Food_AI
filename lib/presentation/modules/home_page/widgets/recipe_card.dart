import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ai/routes/app_router.gr.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
    required this.title,
    required this.description,
    required this.calories,
    required this.fat,
    required this.protein,
    required this.carbs,
  });

  final String title;
  final String description;
  final String calories;
  final String fat;
  final String protein;
  final String carbs;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => context.router.push(const SavedRoute()),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 28,
          right: 28,
          top: 12,
          bottom: 12,
        ),
        child: Container(
          height: 160,
          width: 350,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 5),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 5,
                  child: _buildImage(theme),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  flex: 9,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          title,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      _buildDetails(
                        theme: theme,
                        calories: calories,
                        fat: fat,
                        protein: protein,
                        carbs: carbs,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildDetails({
  required ThemeData theme,
  required String calories,
  required String fat,
  required String protein,
  required String carbs,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Calories',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Protein',
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(calories),
              Text('${protein}g'),
            ],
          )
        ],
      ),
      const SizedBox(
        width: 15,
      ),
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fat',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Carbs',
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text('${fat}g'),
              Text('${carbs}g'),
            ],
          ),
        ],
      )
    ],
  );
}

Widget _buildImage(ThemeData theme) {
  return Stack(
    children: [
      Container(
        height: 112,
        width: 112,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: theme.colorScheme.background,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/vectors/pizza_slice.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 0,
        right: 0,
        child: Container(
          height: 24,
          width: 62,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: theme.cardTheme.color,
          ),
          child: Center(
            child: Text(
              'Lunch',
              style: theme.textTheme.headlineLarge!.copyWith(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
