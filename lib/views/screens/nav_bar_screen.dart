import 'package:coffee_shop_app/constants/app_imports.dart';

class NavBarScreen extends GetWidget<NavBarController> {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.h),
          child: Container(
            height: 150.h,
            color: AppColors.transparentColor,
            child: Column(
              children: [
                const GapWidget(10),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                        child: const Icon(
                          Icons.sort_rounded,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.toNamed(AppStrings.cartRoute),
                        child: const Icon(
                          Icons.shopping_cart_rounded,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const GapWidget(20),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15.w,
                  ),
                  child: Text(
                    AppStrings.homeTitle,
                    style: AppFonts.font20White.copyWith(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const GapWidget(20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: TextFormField(
                    onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                    readOnly: true,
                    enableInteractiveSelection: false,
                    style: AppFonts.font20White.copyWith(
                      fontSize: 14.sp,
                    ),
                    cursorColor: AppColors.transparentWhiteColor,
                    decoration: InputDecoration(
                      fillColor: AppColors.lighterThenLightGrayColor,
                      filled: true,
                      border: AppDefaults.defaultInputBorder(),
                      errorBorder: AppDefaults.defaultInputBorder(),
                      focusedBorder: AppDefaults.defaultInputBorder(),
                      enabledBorder: AppDefaults.defaultInputBorder(),
                      disabledBorder: AppDefaults.defaultInputBorder(),
                      focusedErrorBorder: AppDefaults.defaultInputBorder(),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.transparentWhiteColor,
                      ),
                      hintText: AppStrings.findYourCoffeeText,
                      hintStyle: AppFonts.font20White.copyWith(
                        color: AppColors.transparentWhiteColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Obx(
          () {
            return controller.index.value == 1
                ? const HomeScreen()
                : controller.index.value == 2
                    ? const FavoriteScreen()
                    : controller.index.value == 3
                        ? const NotificationScreen()
                        : const ProfileScreen();
          },
        ),
        bottomSheet: Container(
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.lightGrayColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.darkGrayColor,
                offset: const Offset(0, 0),
                blurRadius: 8.sp,
                spreadRadius: 2.sp,
              ),
            ],
          ),
          child: Obx(
            () {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => controller.index.value = 1,
                    child: Icon(
                      Icons.home,
                      color: controller.index.value == 1 ? AppColors.orangeColor : AppColors.whiteColor,
                      size: 30.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () => controller.index.value = 2,
                    child: Icon(
                      Icons.favorite,
                      color: controller.index.value == 2 ? AppColors.orangeColor : AppColors.whiteColor,
                      size: 30.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () => controller.index.value = 3,
                    child: Icon(
                      Icons.notifications,
                      color: controller.index.value == 3 ? AppColors.orangeColor : AppColors.whiteColor,
                      size: 30.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () => controller.index.value = 4,
                    child: Icon(
                      Icons.person,
                      color: controller.index.value == 4 ? AppColors.orangeColor : AppColors.whiteColor,
                      size: 30.sp,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
