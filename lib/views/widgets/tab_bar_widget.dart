import 'package:coffee_shop_app/constants/app_imports.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final bool? isIndexTrue;
  final VoidCallback? onClick;

  const TabBarWidget(
    this.title, {
    this.onClick,
    this.isIndexTrue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick ?? () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
      child: SizedBox(
        height: 40.h,
        width: 100.w,
        child: Column(
          children: [
            Text(
              title,
              style: AppFonts.font20White.copyWith(
                color: isIndexTrue ?? false ? AppColors.orangeColor : AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: isIndexTrue ?? false ? AppColors.orangeColor : AppColors.transparentColor,
              thickness: 2.sp,
            ),
          ],
        ),
      ),
    );
  }
}
