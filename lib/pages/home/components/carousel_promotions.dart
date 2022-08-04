import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class CarouselPromotions extends StatelessWidget {
  const CarouselPromotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * .15,
          autoPlay: false,
          viewportFraction: 1,
        ),
        itemBuilder: (context, index, realIndex) {
          return Container(
            margin: const EdgeInsets.only(left: 2, right: 2),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 179, 209, 223),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 32,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '15%',
                                style: TextStyle(
                                  color: AppColors.focusTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: ' for all cakes',
                                style: TextStyle(
                                  color: AppColors.titleTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'for our regular costumers',
                          style: TextStyle(
                            color: AppColors.titleTextColor,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
