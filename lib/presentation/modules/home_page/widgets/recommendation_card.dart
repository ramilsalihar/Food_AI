import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ai/presentation/core/widgets/buttons/black_button.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      height: 170,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              title,
              style: textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              description,
              style: textTheme.headlineSmall!.copyWith(fontSize: 14),
            ),
          ),
          const Spacer(),
          BlackButton(
            width: 100,
            title: 'Dice',
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/vectors/dice.svg',
              fit: BoxFit.fill,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
