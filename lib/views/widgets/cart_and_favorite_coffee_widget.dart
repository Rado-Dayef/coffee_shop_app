import 'package:coffee_shop_app/constants/app_imports.dart';

class CartAndFavoriteCoffeeWidget extends StatelessWidget {
  final Widget? cartWidgets;
  final CoffeeModel coffee;

  const CartAndFavoriteCoffeeWidget(
    this.coffee, {
    this.cartWidgets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.find();
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: AppColors.lightGrayColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.lighterThenLightGrayColor,
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
                  tag: coffee.image,
                  child: Image.asset(
                    coffee.image,
                  ),
                ),
              ),
              const GapWidget(20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee.title,
                    style: AppFonts.font20White.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  cartWidgets == null
                      ? Text(
                          AppStrings.dollarSign + AppStrings.spaceSign + coffee.price.toString(),
                          style: AppFonts.font20White.copyWith(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Obx(
                          () {
                            return Text(
                              AppStrings.dollarSign + AppStrings.spaceSign + (coffee.count.value * coffee.price).toString(),
                              style: AppFonts.font20White.copyWith(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                ],
              ),
            ],
          ),
          cartWidgets ??
              InkWell(
                onTap: () => navBarController.checkAndAddToFavCoffeeListOrDeleteFromFavCoffeeList(coffee),
                child: CircleAvatar(
                  backgroundColor: AppColors.lighterThenLightGrayColor,
                  child: Obx(
                    () {
                      return Icon(
                        Icons.favorite,
                        size: 20.sp,
                        color: coffee.isFav.value ? AppColors.orangeColor : AppColors.whiteColor,
                      );
                    },
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
