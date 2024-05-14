import 'package:coffee_shop_app/constants/app_imports.dart';

class AppShimmers {
  static Widget homeCoffeeShimmer() {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.sp,
        mainAxisSpacing: 5.sp,
        mainAxisExtent: 275.sp,
      ),
      itemBuilder: (BuildContext context, int index) {
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
                Shimmer.fromColors(
                  baseColor: AppColors.lighterThenLightGrayColor,
                  highlightColor: AppColors.darkGrayColor,
                  child: Center(
                    child: Container(
                      height: 130.sp,
                      width: 130.sp,
                      decoration: BoxDecoration(
                        color: AppColors.darkGrayColor,
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: AppColors.lighterThenLightGrayColor,
                  highlightColor: AppColors.darkGrayColor,
                  child: Container(
                    height: 15.sp,
                    width: 75.sp,
                    margin: EdgeInsets.only(
                      left: 10.w,
                    ),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrayColor,
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: AppColors.lighterThenLightGrayColor,
                  highlightColor: AppColors.darkGrayColor,
                  child: Container(
                    height: 15.sp,
                    width: 110.sp,
                    margin: EdgeInsets.only(
                      left: 10.w,
                    ),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrayColor,
                      borderRadius: BorderRadius.circular(5.sp),
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
                      Shimmer.fromColors(
                        baseColor: AppColors.lighterThenLightGrayColor,
                        highlightColor: AppColors.darkGrayColor,
                        child: Container(
                          height: 15.sp,
                          width: 50.sp,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: AppColors.darkGrayColor,
                            borderRadius: BorderRadius.circular(5.sp),
                          ),
                        ),
                      ),
                      Shimmer.fromColors(
                        baseColor: AppColors.lighterThenLightGrayColor,
                        highlightColor: AppColors.darkGrayColor,
                        child: CircleAvatar(
                          backgroundColor: AppColors.orangeColor,
                          radius: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
