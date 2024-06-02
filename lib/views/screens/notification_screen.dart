import 'package:coffee_shop_app/constants/app_imports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.notificationsText,
        style: AppFonts.font20White.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
