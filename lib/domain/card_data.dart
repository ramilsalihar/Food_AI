class CardDataModel {
  final String title;
  final String description;

  CardDataModel({
    required this.title,
    required this.description,
  });

  factory CardDataModel.fromJson(Map<String, dynamic> json) {
    return CardDataModel(
      title: json['title'],
      description: json['description'],
    );
  }
}
