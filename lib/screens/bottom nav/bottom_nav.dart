
import 'package:flutter_application_1/screens/bottom%20nav/controller/bottom_nav_controller.dart';
import 'package:flutter_application_1/screens/home%20screen/home_screen.dart';
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
          BottomBarItem(iconData: Icons.home, label: 'Home'),
          BottomBarItem(iconData: Icons.chat, label: 'Chat'),
          BottomBarItem(iconData: Icons.notifications, label: 'Categories'),
          BottomBarItem(iconData: Icons.settings, label: 'Profile'),
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