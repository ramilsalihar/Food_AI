class Recipe {
  final String name;
  final String description;
  final int calories;
  final int fat;
  final int protein;
  final int carbs;

  Recipe({
    required this.name,
    required this.description,
    required this.calories,
    required this.fat,
    required this.protein,
    required this.carbs,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      description: json['description'],
      calories: json['calories'],
      fat: json['fat'],
      protein: json['protein'],
      carbs: json['carbs']
    );
  }
}
