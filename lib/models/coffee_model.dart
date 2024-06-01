class CoffeeModel {
  final int volume;
  final String image;
  final String title;
  final double price;
  final String subTitle;
  final String description;

  CoffeeModel(
    this.image, {
    required this.title,
    required this.price,
    required this.volume,
    required this.subTitle,
    required this.description,
  });
}
