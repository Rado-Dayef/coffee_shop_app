import 'package:coffee_shop_app/constants/app_imports.dart';

class CoffeeModel {
  final int volume;
  final RxInt count;
  final String image;
  final String title;
  final double price;
  final RxBool isFav;
  final RxBool inCart;
  final String subTitle;
  final String description;

  CoffeeModel(
    this.image, {
    required this.title,
    required this.price,
    required this.count,
    required this.isFav,
    required this.volume,
    required this.inCart,
    required this.subTitle,
    required this.description,
  });
}
