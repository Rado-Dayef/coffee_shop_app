import 'package:coffee_shop_app/constants/app_imports.dart';

class CappuccinoScreen extends StatelessWidget {
  const CappuccinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.cappuccinoText,
        style: AppFonts.font20White.copyWith(
          fontSize: 40.sp,
          fontWeight: FontWeight.bold,
          fontFamily: AppStrings.shadeBlueFont,
        ),
      ),
    );
  }
}
