import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ai/presentation/core/widgets/buttons/black_button.dart';
import 'package:food_ai/presentation/core/widgets/layout/app_scaffold.dart';
import 'package:food_ai/presentation/core/widgets/layout/custom_app_bar.dart';
import 'package:food_ai/routes/app_router.gr.dart';

@RoutePage()
class RecipeAnalyzePage extends StatelessWidget {
  const RecipeAnalyzePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: kToolbarHeight + 100,
          left: 12,
          right: 12,
          bottom: 20,
        ),
        child: Stack(
          children: [
            Container(
              height: height - kToolbarHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(32),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write Recipe or Just Name',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                  ),
                  autofocus: false,
                  maxLines: null,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: BlackButton(
                  title: 'Analyze Recipe...',
                  onPressed: () => context.router.push(
                    const AnalysisResultRoute(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: CustomAppBar(
        title: 'Write Recipe or Just Name',
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
