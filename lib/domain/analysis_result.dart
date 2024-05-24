class AnalysisResult {
  final String id;
  final String name;
  final String description;
  final String pros;
  final String cons;
  final String conclusion;


  AnalysisResult({
    required this.id,
    required this.name,
    required this.description,
    required this.pros,
    required this.cons,
    required this.conclusion,
  });

  factory AnalysisResult.fromJson(Map<String, dynamic> json) {
    return AnalysisResult(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      pros: json['pros'],
      cons: json['cons'],
      conclusion: json['conclusion'],
    );
  }
}