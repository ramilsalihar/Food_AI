import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

String ingredients = '''
1. Arugula
2. Peaches
3. Goat cheese or feta
4. Nuts (like almonds or walnuts)
5. Extra virgin olive oil
6. Balsamic vinegar
7. Salt and pepper
''';

class IngredientsCard extends StatelessWidget {
  const IngredientsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 30,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Theme.of(context).canvasColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                ingredients,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            right: 30,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: Theme.of(context).cardTheme.color,
              onPressed: () {},
              child: SvgPicture.asset('assets/icons/stars.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
