import 'package:coffee_shop_app/constants/app_imports.dart';

class HomeController extends GetxController {
  Map<String, List<CoffeeModel>> coffeeList = {
    AppStrings.dataJSONText: [
      CoffeeModel(
        AppStrings.latteImage,
        price: 30,
        volume: 60,
        title: AppStrings.latteText,
        subTitle: AppStrings.bestCoffeeText,
        description: AppStrings.coffeeDescriptionText,
      ),
      CoffeeModel(
        AppStrings.espressoImage,
        price: 30,
        volume: 60,
        title: AppStrings.espressoText,
        subTitle: AppStrings.bestCoffeeText,
        description: AppStrings.coffeeDescriptionText,
      ),
      CoffeeModel(
        AppStrings.blackCoffeeImage,
        price: 30,
        volume: 60,
        title: AppStrings.blackCoffeeText,
        subTitle: AppStrings.bestCoffeeText,
        description: AppStrings.coffeeDescriptionText,
      ),
      CoffeeModel(
        AppStrings.coldCoffeeImage,
        price: 30,
        volume: 100,
        title: AppStrings.coldCoffeeText,
        subTitle: AppStrings.bestCoffeeText,
        description: AppStrings.coffeeDescriptionText,
      ),
    ]
  };

  /// To navigate from the home screen to the details screen.
  void onCoffeeItemClick(CoffeeModel coffee) {
    Get.toNamed(AppStrings.detailsRoute, arguments: coffee);
  }
}
