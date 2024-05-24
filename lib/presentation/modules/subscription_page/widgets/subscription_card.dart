import 'package:flutter/material.dart';
import 'package:food_ai/presentation/core/theme/colors/app_colors.dart';

const appColors = AppColors();

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final text = [
      '🍕 Analyze products without limits',
      '🥢 Generate recipes quickly and without restrictions',
      '🌟 Chat limit with our AI bot is removed',
      '🌠 Full access to all other app features',
      '💫 Utilize the app to its fullest, everything becomes available',
    ];

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: appColors.subscription,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Subscription',
                  style: theme.textTheme.headlineLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ...text
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(
                        TextSpan(
                          text: e,
                          style: theme.textTheme.displayMedium!.copyWith(
                            color: Colors.white,
                            height: 2,
                          ),
                        ),
                      ),
                    ),)
                .toList(),
          ],
        ),
      ),
    );
  }
}
