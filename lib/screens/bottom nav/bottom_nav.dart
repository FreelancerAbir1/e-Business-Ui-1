

import 'package:get/get.dart';
import '../../consts/consts.dart';
class BottomNavBar extends GetView<BottomNavBarController> {
  const BottomNavBar({Key? key}) : super(key: key);
static const routeName = '/bottomnavbar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarLabelSlide(
        selectedIndex: controller.currentIndex.value,
        items: [
          BottomBarItem(iconData: Icons.home, label:home),
          BottomBarItem(iconData: Icons. category, label: categories),
          BottomBarItem(iconData: Icons.shopping_cart, label: cart),
          BottomBarItem(iconData: Icons.account_circle, label:account),
        ],
        onSelect: (index) {
          controller.currentIndex.value = index;
        },
      ),
      body: Obx(() {
        return  IndexedStack(
          index: controller.currentIndex.value,
          children: [
            const HomeScreen(),
             Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        );
      }),
    );
  }
}