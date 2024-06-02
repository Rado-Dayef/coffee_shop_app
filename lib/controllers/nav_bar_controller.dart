import 'package:coffee_shop_app/constants/app_imports.dart';

class NavBarController extends GetxController {
  RxInt index = RxInt(1);
  RxList<CoffeeModel> favCoffeeList = RxList();
  RxList<CoffeeModel> cartCoffeeList = RxList();
  List<CoffeeModel> coffeeList = [
    CoffeeModel(
      AppStrings.latteImage,
      price: 30,
      volume: 60,
      title: AppStrings.latteText,
      subTitle: AppStrings.bestCoffeeText,
      description: AppStrings.coffeeDescriptionText,
      count: RxInt(1),
      inCart: RxBool(false),
      isFav: RxBool(false),
    ),
    CoffeeModel(
      AppStrings.espressoImage,
      price: 30,
      volume: 60,
      title: AppStrings.espressoText,
      subTitle: AppStrings.bestCoffeeText,
      description: AppStrings.coffeeDescriptionText,
      count: RxInt(1),
      inCart: RxBool(false),
      isFav: RxBool(false),
    ),
    CoffeeModel(
      AppStrings.blackCoffeeImage,
      price: 30,
      volume: 60,
      title: AppStrings.blackCoffeeText,
      subTitle: AppStrings.bestCoffeeText,
      description: AppStrings.coffeeDescriptionText,
      count: RxInt(1),
      inCart: RxBool(false),
      isFav: RxBool(false),
    ),
    CoffeeModel(
      AppStrings.coldCoffeeImage,
      price: 30,
      volume: 100,
      title: AppStrings.coldCoffeeText,
      subTitle: AppStrings.bestCoffeeText,
      description: AppStrings.coffeeDescriptionText,
      count: RxInt(1),
      inCart: RxBool(false),
      isFav: RxBool(false),
    ),
  ];

  /// To add or remove coffee item to the favorite list.
  void checkAndAddToFavCoffeeListOrDeleteFromFavCoffeeList(CoffeeModel coffee) {
    bool isExist = favCoffeeList.contains(coffee);
    isExist ? favCoffeeList.remove(coffee) : favCoffeeList.add(coffee);
    coffee.isFav.value = !coffee.isFav.value;
  }

  /// To add or remove coffee item to the cart list.
  void checkAndAddToCartCoffeeListOrDeleteFromCartCoffeeList(CoffeeModel coffee) {
    bool isExist = cartCoffeeList.contains(coffee);
    isExist ? cartCoffeeList.remove(coffee) : cartCoffeeList.add(coffee);
    coffee.inCart.value = !coffee.inCart.value;
  }

  /// To increment the count of the coffee item with one.
  void onPlusOneToCountOfTheCoffeeItem(CoffeeModel coffee) {
    coffee.count.value++;
  }

  /// To decrement the count of the coffee item with one.
  void onMinusOneFromCountOfTheCoffeeItem(CoffeeModel coffee) {
    coffee.count.value == 1 ? AppDefaults.defaultToast(AppStrings.countCanNotBeLessThenOneToast) : coffee.count.value--;
  }
}
