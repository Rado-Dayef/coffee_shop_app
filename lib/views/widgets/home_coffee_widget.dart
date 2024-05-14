import 'package:coffee_shop_app/constants/app_imports.dart';

class HomeCoffeeWidget extends StatelessWidget {
  final CoffeeModel coffee;

  const HomeCoffeeWidget(this.coffee, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.h,
        bottom: 5.h,
      ),
      child: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 130.sp,
                width: 130.sp,
                child: Hero(
                  tag: coffee.image,
                  child: Image.asset(coffee.image),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Text(
                coffee.title,
                style: AppFonts.font20White.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Text(
                coffee.subTitle,
                style: AppFonts.font20White.copyWith(
                  color: AppColors.transparentWhiteColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.dollarSign + AppStrings.spaceSign + coffee.price.toString(),
                    style: AppFonts.font20White.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.orangeColor,
                    radius: 15.sp,
                    child: const Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
