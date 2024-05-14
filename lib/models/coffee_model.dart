import 'package:coffee_shop_app/constants/app_imports.dart';

class CoffeeModel {
  final int volume;
  final String image;
  final String title;
  final double price;
  final String subTitle;

  CoffeeModel(
    this.image, {
    required this.title,
    required this.price,
    required this.volume,
    required this.subTitle,
  });

  factory CoffeeModel.fromJson(Map<String, dynamic> json) {
    return CoffeeModel(
      json[AppStrings.imageJSONText],
      title: json[AppStrings.titleJSONText],
      volume: json[AppStrings.volumeJSONText],
      subTitle: json[AppStrings.subTitleJSONText],
      price: json[AppStrings.priceJSONText].toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        AppStrings.imageJSONText: image,
        AppStrings.titleJSONText: title,
        AppStrings.priceJSONText: price,
        AppStrings.volumeJSONText: volume,
        AppStrings.subTitleJSONText: subTitle,
      };
}
