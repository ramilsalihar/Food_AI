import 'package:food_ai/domain/analysis_result.dart';
import 'package:food_ai/domain/card_data.dart';
import 'package:food_ai/domain/recipe.dart';

class DummyModels {
  // DummyModels();

  final cardData = CardDataModel(
    title: 'Recommendation',
    description:
    'Bored with just the same food? we can recommend you special food',
  );

  final cardData2 = CardDataModel(
    title: 'Find Recipes using magic cook',
    description: 'I have the ingredients but don\'t know what to cook',
  );

  final recipe = Recipe(
    name: 'Arugula Salad with Stone Fruit',
    description: 'Long Description',
    calories: 450,
    fat: 8,
    protein: 4,
    carbs: 23,
  );

  static String milkDescription = '''
    Milk is a widely consumed dairy product known for its nutritional value. Here's a brief overview of its pros and cons:
    ''';

  static String milkPros = '''
    Pros:
    1. Nutrient-Rich: Milk is a good source of calcium, protein, vitamins (such as B12), and minerals, which are essential for bone health and overall well-being.
    2. Hydration: It contributes to overall hydration due to its high water content.
    3. Versatility: It can be used to make various dairy products such as cheese, yogurt, and butter.
    ''';

  static String milkCons = '''
    Cons:
    1. Lactose Intolerance: Some people are lactose intolerant, meaning they have difficulty digesting lactose, the sugar found in milk.
    2. Allergies: Milk allergies are common in both children and adults, causing adverse reactions to dairy products.
    3. Saturated Fat: Whole milk contains saturated fats, which can contribute to high cholesterol levels if consumed excessively.
    ''';

  static String milkNote = '''
    It's important to note that while milk provides essential nutrients, 
    individual tolerance and dietary preferences should be considered 
    when incorporating it into one's diet.
    ''';


  final results = AnalysisResult(
    id: '12',
    name: 'UHT Milk Full Cream',
    description: milkDescription,
    pros: milkPros,
    cons: milkCons,
    conclusion: milkNote,
  );
}

