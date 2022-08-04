import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/pages/home/components/sweet_card.dart';
import 'package:sweets_store_app/pages/home/home_controller.dart';

class GridListView extends GetView<HomeController> {
  const GridListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: controller.sweetCardList.length,
      itemBuilder: (context, index) {
        final list = controller.sweetCardList[index];
        return SweetCard(
          productName: list.sweetName,
          productPrice: list.price,
          productImage: list.sweetImage,
          cardColor: list.color,
          index: index,
        );
      },
    );
  }
}
