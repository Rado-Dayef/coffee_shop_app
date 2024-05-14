import 'package:coffee_shop_app/constants/app_imports.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppStrings.getStartedBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.appTitle,
              style: AppFonts.font20White.copyWith(
                fontSize: 60.sp,
                fontFamily: AppStrings.shadeBlueFont,
                fontWeight: FontWeight.bold,
              ),
            ),
            const GapWidget(350),
            Text(
              AppStrings.appSubTitle,
              style: AppFonts.font20White,
            ),
            const GapWidget(50),
            InkWell(
              onTap: controller.onGetStartedButtonClick,
              child: Container(
                height: 50.h,
                width: 175.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.orangeColor,
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Text(
                  AppStrings.getStartedText,
                  style: AppFonts.font20White.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
