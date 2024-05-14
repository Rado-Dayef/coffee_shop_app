import 'package:coffee_shop_app/constants/app_imports.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final bool isIndexTrue;

  const TabBarWidget(
    this.title, {
    required this.isIndexTrue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 100.w,
      child: Column(
        children: [
          Text(
            title,
            style: AppFonts.font20White.copyWith(
              color: isIndexTrue ? AppColors.orangeColor : AppColors.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: isIndexTrue ? AppColors.orangeColor : AppColors.transparentColor,
            thickness: 2.sp,
          ),
        ],
      ),
    );
  }
}
