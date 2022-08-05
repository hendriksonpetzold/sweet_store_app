import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/models/sweet_card_model.dart';
import 'package:sweets_store_app/pages/home/components/sweet_card.dart';
import 'package:sweets_store_app/pages/home/home_controller.dart';

class GridListView extends GetView<HomeController> {
  const GridListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: controller.searchSweetCardList.length,
        itemBuilder: (context, index) {
          final SweetCardModel list = controller.searchSweetCardList[index];
          return InkWell(
            onTap: () {
              Get.toNamed(
                '/home_page/detail_page',
                arguments: {
                  'color': list.color,
                  'sweetImage': list.sweetImage,
                  'sweetName': list.sweetName,
                  'price': list.price,
                  'servings': list.servings,
                  'preparationTime': list.preparationTime,
                  'kcal': list.kcal,
                  'tag': 'sweet$index'
                },
              );
            },
            child: Hero(
              tag: 'sweet$index',
              child: SweetCard(
                productName: list.sweetName,
                productPrice: list.price,
                productImage: list.sweetImage,
                cardColor: list.color,
                index: index,
              ),
            ),
          );
        },
      );
    });
  }
}
