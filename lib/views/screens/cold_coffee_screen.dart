import 'package:coffee_shop_app/constants/app_imports.dart';

class ColdCoffeeScreen extends StatelessWidget {
  const ColdCoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.coldCoffeeText,
        style: AppFonts.font20White.copyWith(
          fontSize: 40.sp,
          fontWeight: FontWeight.bold,
          fontFamily: AppStrings.shadeBlueFont,
        ),
      ),
    );
  }
}
