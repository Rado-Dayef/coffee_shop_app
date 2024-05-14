import 'package:coffee_shop_app/constants/app_imports.dart';

class GetStartedController extends GetxController {
  /// To navigate from the get stated screen to the home screen.
  void onGetStartedButtonClick() {
    Get.offNamed(AppStrings.homeRoute);
  }
}
