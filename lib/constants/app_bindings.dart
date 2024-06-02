import 'package:coffee_shop_app/constants/app_imports.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => NavBarController(),
      fenix: true,
    );
  }
}
