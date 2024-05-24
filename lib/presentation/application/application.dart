import 'package:flutter/material.dart';
import 'package:food_ai/presentation/core/theme/app_theme.dart';
import 'package:food_ai/routes/app_router.dart';

class FoodAI extends StatelessWidget {
  const FoodAI({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      title: 'FoodAI',
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      routerConfig: appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
