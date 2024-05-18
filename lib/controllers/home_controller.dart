import 'package:coffee_shop_app/constants/app_imports.dart';

class HomeController extends GetxController {
  RxInt index = RxInt(0);
  List<CoffeeModel> coffeeList = [];

  /// To navigate from the home screen to the details screen.
  void onCoffeeItemClick(CoffeeModel coffee) {
    Get.toNamed(AppStrings.detailsRoute, arguments: coffee);
  }

  /// To load the coffee data from the JSON file.
  Future<void> loadCoffeeData() async {
    try {
      String jsonString = await rootBundle.loadString(AppStrings.coffeeJSON);
      List<dynamic> jsonList = jsonDecode(jsonString);
      await Future.delayed(
        /// To create a delay with two second before assign the data into the list to display the shimmer animation.
        const Duration(
          seconds: 2,
        ),
        () => coffeeList = jsonList.map((json) => CoffeeModel.fromJson(json)).toList(),
      );
    } catch (e) {
      AppDefaults.defaultToast(e.toString());
    }
  }
}
