import 'dart:convert';

class ProductModel {
  final String title;
  final String type;
  final String description;
  final String filename;
  final int height;
  final int width;
  final double prince;
  final int rating;

  ProductModel({
    required this.title,
    required this.type,
    required this.description,
    required this.filename,
    required this.height,
    required this.width,
    required this.prince,
    required this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'type': type,
      'description': description,
      'filename': filename,
      'height': height,
      'width': width,
      'prince': prince,
      'rating': rating,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      title: map['title'] ?? '',
      type: map['type'] ?? '',
      description: map['description'] ?? '',
      filename: map['filename'] ?? '',
      height: map['height']?.toInt() ?? 0,
      width: map['width']?.toInt() ?? 0,
      prince: map['prince']?.toDouble() ?? 0.0,
      rating: map['rating']?.toInt() ?? 0,
    );
  }

  
}
