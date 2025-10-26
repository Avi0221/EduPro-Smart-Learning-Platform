class Program {
  final String id;
  final String category;
  final String title;
  final double price;
  final double oldPrice;
  final double rating;
  final int students;
  final String image;

  Program({
    required this.id,
    required this.category,
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.students,
    required this.image,
  });

  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
      id: json['id'].toString(),
      category: json['category'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      oldPrice: (json['oldPrice'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      students: json['students'],
      image: json['image'],
    );
  }
}
