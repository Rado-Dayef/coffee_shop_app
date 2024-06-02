import 'package:coffee_shop_app/constants/app_imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.profileText,
        style: AppFonts.font20White.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
