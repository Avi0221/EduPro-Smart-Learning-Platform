class ProgramDetail {
  final int id;
  final String title;
  final String description;
  final String instructor;
  final String instructorImage;
  final double price;
  final double rating;
  final List<String> features;
  final List<Map<String, dynamic>> reviews;

  ProgramDetail({
    required this.id,
    required this.title,
    required this.description,
    required this.instructor,
    required this.instructorImage,
    required this.price,
    required this.rating,
    required this.features,
    required this.reviews,
  });

  factory ProgramDetail.fromJson(Map<String, dynamic> json) {
    return ProgramDetail(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      instructor: json['instructor'],
      instructorImage: json['instructorImage'],
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      features: List<String>.from(json['features']),
      reviews: List<Map<String, dynamic>>.from(json['reviews']),
    );
  }
}
