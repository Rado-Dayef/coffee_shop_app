import 'package:coffee_shop_app/constants/app_imports.dart';

class AppDefaults {
  static OutlineInputBorder defaultInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.sp),
      borderSide: const BorderSide(
        color: AppColors.transparentColor,
      ),
    );
  }

  static Future<bool?> defaultToast(String text) {
    return Fluttertoast.showToast(
      msg: text,
      backgroundColor: AppColors.darkGrayColor,
      textColor: AppColors.whiteColor,
      fontSize: 14.sp,
    );
  }
}
