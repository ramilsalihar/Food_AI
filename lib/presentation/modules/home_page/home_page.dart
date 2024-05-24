import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ai/presentation/core/widgets/layout/app_nav_bar.dart';
import 'package:food_ai/presentation/core/widgets/layout/app_scaffold.dart';
import 'package:food_ai/presentation/core/widgets/layout/custom_app_bar.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/home_body.dart';
import 'package:food_ai/presentation/modules/home_page/widgets/save_body.dart';
import 'package:food_ai/routes/app_router.gr.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget> pages = {
      'EatWell': const HomeBody(),
      'Recipes': const SaveBody(),
    };

    void _onItemTapped(int selectedIndex) {
      setState(() {
        index = selectedIndex;
      });
    }

    return AppScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: kToolbarHeight + 20,
          ),
          child: pages[pages.keys.elementAt(index)],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: AppNavbar(
        onItemTapped: _onItemTapped,
        selectedIndex: index,
      ),
      floatingActionButton: CustomAppBar(
        title: pages.keys.elementAt(index),
        leadingIcon: Image.asset(
          'assets/icons/subscription_icon.png',
          fit: BoxFit.cover,
        ),
        onLeadingIconPressed: () => context.router.push(
          const SubscriptionRoute(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
