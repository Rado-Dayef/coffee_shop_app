import 'package:coffee_shop_app/constants/app_imports.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(210.h),
          child: Container(
            height: 210.h,
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
                        onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                        child: const Icon(
                          Icons.push_pin,
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
                const GapWidget(20),
                Obx(
                  () {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () => controller.index.value = 0,
                          child: TabBarWidget(
                            AppStrings.hotCoffeeText,
                            isIndexTrue: controller.index.value == 0,
                          ),
                        ),
                        InkWell(
                          onTap: () => controller.index.value = 1,
                          child: TabBarWidget(
                            AppStrings.coldCoffeeText,
                            isIndexTrue: controller.index.value == 1,
                          ),
                        ),
                        InkWell(
                          onTap: () => controller.index.value = 2,
                          child: TabBarWidget(
                            AppStrings.cappuccinoText,
                            isIndexTrue: controller.index.value == 2,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            bottom: 50.h,
          ),
          child: Obx(
            () {
              return controller.index.value == 0
                  ? HotCoffeeScreen(controller)
                  : controller.index.value == 1
                      ? const ColdCoffeeScreen()
                      : const CappuccinoScreen();
            },
          ),
        ),
        bottomSheet: Container(
          height: 50.h,
          decoration: BoxDecoration(color: AppColors.lightGrayColor, boxShadow: [
            BoxShadow(
              color: AppColors.darkGrayColor,
              offset: const Offset(0, 0),
              blurRadius: 8.sp,
              spreadRadius: 2.sp,
            ),
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: AppColors.orangeColor,
                size: 30.sp,
              ),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Icon(
                  Icons.favorite,
                  color: AppColors.whiteColor,
                  size: 30.sp,
                ),
              ),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Icon(
                  Icons.notifications,
                  color: AppColors.whiteColor,
                  size: 30.sp,
                ),
              ),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Icon(
                  Icons.person,
                  color: AppColors.whiteColor,
                  size: 30.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
