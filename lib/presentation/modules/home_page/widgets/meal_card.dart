import 'package:flutter/material.dart';
import 'package:food_ai/core/extensions/dimens_extension.dart';

class MealCard extends StatelessWidget {
  const MealCard({
    super.key,
    required this.title,
    required this.count,
  });

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 12,
        bottom: 12,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  context.dimens.cardBorderRadius,
                ),
              ),
              color: theme.cardColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Text(
                    '$count ingredients',
                    style: theme.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -40,
            left: 10,
            child: Image.asset(
              'assets/vectors/sushi.png',
              width: 172,
            ),
          ),
        ],
      ),
    );
  }
}
