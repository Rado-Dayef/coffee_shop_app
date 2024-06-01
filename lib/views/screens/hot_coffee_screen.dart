import 'package:coffee_shop_app/constants/app_imports.dart';

class HotCoffeeScreen extends StatelessWidget {
  final HomeController controller;

  const HotCoffeeScreen(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      itemCount: controller.coffeeList[AppStrings.dataJSONText]!.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.sp,
        mainAxisSpacing: 5.sp,
        mainAxisExtent: 275.sp,
      ),
      itemBuilder: (BuildContext context, int index) {
        CoffeeModel coffee = controller.coffeeList[AppStrings.dataJSONText]![index];
        return InkWell(
          onTap: () => controller.onCoffeeItemClick(coffee),
          child: HomeCoffeeWidget(coffee),
        );
      },
    );
  }
}
