import 'package:coffee_shop_app/constants/app_imports.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.find();
    CoffeeModel coffeeFromArguments = Get.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            right: 15.w,
            bottom: 100.h,
            left: 15.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 15.h,
                  bottom: 50.h,
                ),
                child: InkWell(
                  onTap: Get.back,
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: AppColors.whiteColor,
                    size: 40.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Hero(
                  tag: coffeeFromArguments.image,
                  child: Image.asset(
                    coffeeFromArguments.image,
                  ),
                ),
              ),
              const GapWidget(20),
              Text(
                coffeeFromArguments.subTitle,
                style: AppFonts.font20White.copyWith(
                  color: AppColors.transparentWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
              const GapWidget(20),
              Text(
                coffeeFromArguments.title,
                style: AppFonts.font20White.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                ),
              ),
              const GapWidget(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 115.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.sp),
                      border: Border.all(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () => navBarController.onMinusOneFromCountOfTheCoffeeItem(coffeeFromArguments),
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
                              coffeeFromArguments.count.value.toString(),
                              style: AppFonts.font20White.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 24.sp,
                              ),
                            );
                          },
                        ),
                        InkWell(
                          onTap: () => navBarController.onPlusOneToCountOfTheCoffeeItem(coffeeFromArguments),
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
                  ),
                  Obx(
                    () {
                      return Text(
                        AppStrings.dollarSign + AppStrings.spaceSign + (coffeeFromArguments.count.value * coffeeFromArguments.price).toString(),
                        style: AppFonts.font20White.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      );
                    },
                  ),
                ],
              ),
              const GapWidget(20),
              Text(
                AppStrings.coffeeDescriptionText,
                style: AppFonts.font20White.copyWith(
                  color: AppColors.transparentWhiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const GapWidget(20),
              Text(
                AppStrings.volumeText + AppStrings.colonSign + AppStrings.spaceSign + AppStrings.spaceSign + coffeeFromArguments.volume.toString() + AppStrings.mlText,
                style: AppFonts.font20White.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          color: AppColors.lightGrayColor,
          width: double.infinity,
          height: 100.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => navBarController.checkAndAddToCartCoffeeListOrDeleteFromCartCoffeeList(coffeeFromArguments),
                child: Container(
                  height: 50.h,
                  width: 200.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.lighterThenLightGrayColor,
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Obx(
                    () {
                      return Text(
                        coffeeFromArguments.inCart.value ? AppStrings.removeFromCartText : AppStrings.addToCartText,
                        style: AppFonts.font20White.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () => navBarController.checkAndAddToFavCoffeeListOrDeleteFromFavCoffeeList(coffeeFromArguments),
                child: Container(
                  height: 50.sp,
                  width: 50.sp,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Obx(
                    () {
                      return Icon(
                        coffeeFromArguments.isFav.value ? Icons.favorite : Icons.favorite_border,
                        color: Colors.white,
                      );
                    },
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
