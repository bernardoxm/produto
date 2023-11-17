class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;
  Product({
    required this.description,
    required this.id,
    this.isFavorite = false,
    required this.imageUrl,
    required this.price,
    required this.title,
  });
  void toggleFavorite(){
    isFavorite = !isFavorite;


  }
}
