import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ai/presentation/core/widgets/buttons/app_long_button.dart';
import 'package:food_ai/presentation/core/widgets/layout/app_scaffold.dart';
import 'package:food_ai/presentation/core/widgets/layout/custom_app_bar.dart';
import 'package:food_ai/presentation/modules/subscription_page/widgets/subscription_card.dart';

@RoutePage()
class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: kToolbarHeight * 3,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SubscriptionCard(),
            const SizedBox(
              height: 20,
            ),
            AppLongButton(
              title: 'Buy premium for \$9.99',
              onPressed: () {},
            ),
            _buildFooter(context),
          ],
        ),
      ),
      floatingActionButton: CustomAppBar(
        title: 'Magic🦄',
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

_buildFooter(context) {
  final theme = Theme.of(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ...[
        'Privacy Policy',
        'Restore',
        'Terms of Use',
      ].map(
        (e) => Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 15,
          ),
          child: Text(
            e,
            style: theme.textTheme.headlineSmall!.copyWith(fontSize: 16),
          ),
        ),
      ),
    ],
  );
}
