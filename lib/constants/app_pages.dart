import 'package:coffee_shop_app/constants/app_imports.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.navBarRoute,
      page: () => const NavBarScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.cartRoute,
      page: () => const CartScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.detailsRoute,
      page: () => const DetailsScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.getStartedRoute,
      page: () => const GetStartedScreen(),
      transition: Transition.noTransition,
    ),
  ];
}
