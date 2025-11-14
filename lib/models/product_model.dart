class ProductModel {
  final String title;
  final num price;
  final String image;

  ProductModel({required this.title, required this.price, required this.image});

  factory ProductModel.fromjson(Map<String, dynamic> jsondata) {
    return ProductModel(
      title: jsondata['title'],
      price: jsondata['price'],
      image: jsondata['image'],
    );
  }
}
