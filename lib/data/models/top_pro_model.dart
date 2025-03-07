class TopProModel {
  final int id;
  final String name;
  final String occupation;
  final double rating;

  TopProModel({
    required this.id,
    required this.name,
    required this.occupation,
    required this.rating,
  });

  factory TopProModel.fromJson(Map<String, dynamic> json) {
    return TopProModel(
      id: json['id'],
      name: json['name'],
      occupation: json['occupation'],
      rating: json['rating'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'occupation': occupation,
        'rating': rating,
      };
}
