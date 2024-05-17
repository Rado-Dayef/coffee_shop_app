import 'package:coffee_shop_app/constants/app_imports.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 15.h,
            right: 15.w,
            bottom: 100.h,
            left: 15.w,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: Get.back,
                    child: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      color: AppColors.whiteColor,
                      size: 40.sp,
                    ),
                  ),
                  const GapWidget(10),
                  Text(
                    AppStrings.cartText,
                    style: AppFonts.font20White.copyWith(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const GapWidget(20),
              Container(
                padding: EdgeInsets.all(10.sp),
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
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100.sp,
                          width: 100.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          child: Hero(
                            tag: controller.coffeeFromArguments.image,
                            child: Image.asset(
                              controller.coffeeFromArguments.image,
                            ),
                          ),
                        ),
                        const GapWidget(20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.coffeeFromArguments.subTitle,
                              style: AppFonts.font20White.copyWith(
                                color: AppColors.lighterThenLightGrayColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              controller.coffeeFromArguments.title,
                              style: AppFonts.font20White.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Obx(
                              () {
                                return Text(
                                  controller.totalPrice.value.toString(),
                                  style: AppFonts.font20White.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: controller.onMinusOneFromCount,
                          child: Container(
                            height: 40.sp,
                            width: 40.sp,
                            alignment: Alignment.center,
                            child: Text(
                              AppStrings.minusSign,
                              style: AppFonts.font20White.copyWith(
                                fontSize: 30.sp,
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () {
                            return Text(
                              controller.countFromArguments.value.toString(),
                              style: AppFonts.font20White.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 24.sp,
                              ),
                            );
                          },
                        ),
                        InkWell(
                          onTap: controller.onPlusOneToCount,
                          child: Container(
                            height: 40.sp,
                            width: 40.sp,
                            alignment: Alignment.center,
                            child: Text(
                              AppStrings.plusSign,
                              style: AppFonts.font20White.copyWith(
                                fontSize: 30.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const GapWidget(25),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Container(
                  height: 50.h,
                  width: 250.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.lighterThenLightGrayColor,
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Text(
                    AppStrings.buyNowText,
                    style: AppFonts.font20White.copyWith(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
