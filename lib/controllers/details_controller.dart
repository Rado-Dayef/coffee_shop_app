import 'package:coffee_shop_app/constants/app_imports.dart';

class DetailsController extends GetxController {
  CoffeeModel coffeeFromArguments = Get.arguments;
  RxInt count = RxInt(1);

  /// To increment the count with one.
  void onPlusOneToCount() {
    count.value++;
  }

  /// To decrement the count with one if its not equal one or less, But if the count equal one or less display toast to worn the user.
  void onMinusOneFromCount() {
    count.value == 1 ? AppDefaults.defaultToast(AppStrings.countCanNotBeLessThenOneToast) : count.value--;
  }
}
