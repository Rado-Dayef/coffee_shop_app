import 'package:coffee_shop_app/constants/app_imports.dart';

class HotCoffeeScreen extends StatelessWidget {
  const HotCoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.find();
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      itemCount: navBarController.coffeeList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.sp,
        mainAxisSpacing: 5.sp,
        mainAxisExtent: 275.sp,
      ),
      itemBuilder: (BuildContext context, int index) {
        CoffeeModel coffee = navBarController.coffeeList[index];
        return InkWell(
          onTap: () => Get.toNamed(AppStrings.detailsRoute, arguments: coffee),
          child: HomeCoffeeWidget(coffee),
        );
      },
    );
  }
}
