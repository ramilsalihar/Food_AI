import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ai/presentation/core/widgets/buttons/action_button.dart';
import 'package:food_ai/presentation/core/widgets/buttons/expandable_fab_button.dart';
import 'package:food_ai/routes/app_router.gr.dart';

class AppNavbar extends StatefulWidget {
  const AppNavbar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  final Function(int) onItemTapped;
  final int selectedIndex;

  @override
  State<AppNavbar> createState() => _AppNavbarState();
}

class _AppNavbarState extends State<AppNavbar> {
  void _updateIndex(int selectedIndex) {
    widget.onItemTapped(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: kToolbarHeight + 200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: IconButton(
                onPressed: () => _updateIndex(0),
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: ExpandableFab(
                children: [
                  ActionButton(
                    icon: SvgPicture.asset(
                      'assets/icons/barcode_scan.svg',
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {
                      print('Barcode');
                      context.router.push(const BarcodeRoute());
                    },
                  ),
                  ActionButton(
                    icon: SvgPicture.asset(
                      'assets/icons/recipe_bill.svg',
                      fit: BoxFit.cover,
                    ),
                    onPressed: () =>
                        context.router.push(const RecipeAnalyzeRoute()),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              fit: FlexFit.loose,
              child: IconButton(
                onPressed: () => _updateIndex(1),
                icon: SvgPicture.asset(
                  'assets/icons/save.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
