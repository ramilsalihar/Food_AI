import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ai/domain/dummy_models.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/magic_cook_card.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/meal_card.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/recommendation_card.dart';
import 'package:food_ai/routes/app_router.gr.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final data = DummyModels();
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RecommendationCard(
                title: data.cardData.title,
                description: data.cardData.description,
              ),
              const MealCard(
                title: 'Sushi',
                count: 7,
              ),
            ],
          ),
          MagicCookCard(
            title: data.cardData2.title,
            description: data.cardData2.description,
            onPressed: () => context.router.push(const MagicCookRoute()),
          )
        ],
      ),
    );
  }
}
