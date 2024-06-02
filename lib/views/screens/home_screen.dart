import 'package:coffee_shop_app/constants/app_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 50.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const GapWidget(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: TabBarWidget(
                    onClick: () {},
                    AppStrings.hotCoffeeText,
                    isIndexTrue: true,
                  ),
                ),
                const TabBarWidget(
                  AppStrings.coldCoffeeText,
                ),
                const TabBarWidget(
                  AppStrings.cappuccinoText,
                ),
              ],
            ),
            const HotCoffeeScreen(),
          ],
        ),
      ),
    );
  }
}
