import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/pages/home/home_controller.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class CarouselPromotions extends GetView<HomeController> {
  const CarouselPromotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: controller.promotionCardList.length,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * .15,
          autoPlay: true,
          viewportFraction: 1,
        ),
        itemBuilder: (context, index, realIndex) {
          final list = controller.promotionCardList[index];
          return Container(
            margin: const EdgeInsets.only(left: 2, right: 2),
            width: double.infinity,
            decoration: BoxDecoration(
              color: list.color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 32,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${list.discount}% ',
                                style: const TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: list.productDiscounted,
                                style: const TextStyle(
                                  color: AppColors.titleTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          list.subTitle,
                          style: const TextStyle(
                            color: AppColors.titleTextColor,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Image(
                      image: AssetImage(
                        list.image,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
