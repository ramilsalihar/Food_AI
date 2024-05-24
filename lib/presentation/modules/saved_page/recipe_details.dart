import 'package:flutter/material.dart';

String saladRecipe = '''
Arugula Salad with Stone Fruit is a delightful and refreshing dish. Here's a simple recipe to create this flavorful salad:

Ingredients:
- 5 ounces (about 5 cups) of arugula
- 2-3 ripe stone fruits (peaches, nectarines, or apricots), sliced
- 4 ounces of goat cheese or feta, crumbled
- 1/3 cup of nuts (almonds or walnuts), roughly chopped
- 3-4 tablespoons of extra virgin olive oil
- 2 tablespoons of balsamic vinegar
- Salt and pepper to taste

Instructions:
1. Start by thoroughly washing the arugula and patting it dry. Place the arugula in a large salad bowl.\n
2. Add the sliced stone fruits to the bowl with the arugula.\n
3. Sprinkle the crumbled goat cheese or feta over the arugula and stone fruits.\n
4. In a small bowl, combine the extra virgin olive oil and balsamic vinegar to create a dressing. Whisk the ingredients together until well combined.\n
5. Drizzle the dressing over the salad. Gently toss the salad to ensure the dressing evenly coats the ingredients.\n
6. Sprinkle the chopped nuts over the top of the salad.\n
7. Season with salt and pepper to taste.\n
8. Serve immediately and enjoy this delightful Arugula Salad with Stone Fruit!\n

This salad offers a delightful combination of peppery arugula, sweet and juicy stone fruits, creamy cheese, and crunchy nuts, all complemented by a simple and elegant vinaigrette dressing.
''';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28,
        right: 28,
        top: 12,
        bottom: 12,
      ),
      child: Container(
        width: 350,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: RichText(
            text: TextSpan(
              text: saladRecipe,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      ),
    );
  }
}
