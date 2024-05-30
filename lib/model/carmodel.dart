

class CarModel {
  final String title;
  final String description;
  String image;
  final String review;
  final int price; // Corrected to String type
  final String category;
  final String fuel;
  final String transaction;

  CarModel({
    required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
     required this.fuel,
      required this.transaction,

  });

    Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'image': image,
      'review': review,
      'price': price,
      'category': category,
      'fuel': fuel,
      'transaction':transaction,

    };
  }

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      title: map['title'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      review: map['review'] as String,
      price: map['price'] ,
      category: map['category'] as String,
      fuel: map['fuel'] as String,
      transaction: map['transaction'] as String,
    );
  }
}






