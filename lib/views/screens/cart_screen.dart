import 'package:coffee_shop_app/constants/app_imports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.find();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        appBar: AppBar(
          backgroundColor: AppColors.lightGrayColor,
          foregroundColor: AppColors.lightGrayColor,
          surfaceTintColor: AppColors.lightGrayColor,
          leading: InkWell(
            onTap: Get.back,
            child: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: AppColors.whiteColor,
              size: 40.sp,
            ),
          ),
          title: Text(
            AppStrings.cartText,
            style: AppFonts.font20White.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Obx(
          () {
            return navBarController.cartCoffeeList.isEmpty
                ? Center(
                    child: Text(
                      AppStrings.noItemsInYourCartText,
                      style: AppFonts.font20White.copyWith(
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
                    itemCount: navBarController.cartCoffeeList.length,
                    itemBuilder: (BuildContext context, int index) {
                      CoffeeModel coffee = navBarController.cartCoffeeList[index];
                      return InkWell(
                        onTap: () => Get.toNamed(
                          AppStrings.detailsRoute,
                          arguments: coffee,
                        ),
                        child: CartAndFavoriteCoffeeWidget(
                          coffee,
                          cartWidgets: Row(
                            children: [
                              InkWell(
                                onTap: () => navBarController.checkAndAddToCartCoffeeListOrDeleteFromCartCoffeeList(coffee),
                                child: Icon(
                                  Icons.delete_outline,
                                  color: AppColors.whiteColor,
                                  size: 24.sp,
                                ),
                              ),
                              const GapWidget(10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () => navBarController.onMinusOneFromCountOfTheCoffeeItem(coffee),
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
                                        coffee.count.value.toString(),
                                        style: AppFonts.font20White.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.sp,
                                        ),
                                      );
                                    },
                                  ),
                                  InkWell(
                                    onTap: () => navBarController.onPlusOneToCountOfTheCoffeeItem(coffee),
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
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const GapWidget(15);
                    },
                  );
          },
        ),
      ),
    );
  }
}
