import 'package:coffee_shop_app/constants/app_imports.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.find();
    return Obx(
      () {
        return navBarController.favCoffeeList.isEmpty
            ? Center(
                child: Text(
                  AppStrings.noFavoriteItemsYetText,
                  style: AppFonts.font20White.copyWith(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : ListView.separated(
                padding: EdgeInsets.only(
                  top: 10.h,
                  right: 10.w,
                  bottom: 45.h,
                  left: 10.w,
                ),
                itemCount: navBarController.favCoffeeList.length,
                itemBuilder: (BuildContext context, int index) {
                  CoffeeModel coffee = navBarController.favCoffeeList[index];
                  return InkWell(
                    onTap: () => Get.toNamed(
                      AppStrings.detailsRoute,
                      arguments: coffee,
                    ),
                    child: CartAndFavoriteCoffeeWidget(coffee),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const GapWidget(15);
                },
              );
      },
    );
  }
}
