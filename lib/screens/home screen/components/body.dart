import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/screens/home%20screen/controller/home_controller.dart';
import 'package:get/get.dart';

import '../../../consts/consts.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class Body extends GetView<HomeScreenController> {
  Body({Key? key}) : super(key: key);
  List<Widget> imageItems = [
    Image.asset('assets/images/slider_1.png'),
    Image.asset('assets/images/slider_2.png'),
    Image.asset('assets/images/slider_3.png')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SearchBar(search: controller.search),
        CarouselSlider(
            items: imageItems,
            options: CarouselOptions(
              height: 150.0,
              autoPlay: true,
              aspectRatio: 3.5,
              viewportFraction: 1.00,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayAnimationDuration: const Duration(seconds: 3),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.9,
              onPageChanged: (index, reason) {},
              scrollDirection: Axis.horizontal,
            )),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  required  this.search,
  });

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
        textEditingController:  search,
        isOriginalAnimation: true,
        enableKeyboardFocus: true,
        onExpansionComplete: () {
          debugPrint('do something just after search box is opened.');
        },
        onCollapseComplete: () {
          debugPrint('do something just after searchbox is closed.');
        },
        onPressButton: (isSearchBarOpens) {
          debugPrint(
              'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
        },
        trailingWidget: const Icon(Icons.search, size: 20, color: Colors.black),
        secondaryButtonWidget:
            const Icon(Icons.close, size: 20, color: Colors.black),
        buttonWidget: const Icon(Icons.search, size: 20, color: Colors.black));
  }
}
