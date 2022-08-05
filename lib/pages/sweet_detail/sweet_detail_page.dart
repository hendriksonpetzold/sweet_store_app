import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/components/app_button.dart';
import 'package:sweets_store_app/components/custom_back_button.dart';
import 'package:sweets_store_app/components/favorite_button.dart';
import 'package:sweets_store_app/pages/sweet_detail/components/additional_information_box.dart';
import 'package:sweets_store_app/pages/sweet_detail/components/description.dart';
import 'package:sweets_store_app/pages/sweet_detail/components/title_and_price.dart';
import 'package:sweets_store_app/pages/sweet_detail/sweet_detail_controller.dart';

class SweetDetailPage extends StatelessWidget {
  SweetDetailPage({Key? key}) : super(key: key);
  final SweetDetailController controller = Get.put(SweetDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .6,
            color: controller.color,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 60, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomBackButton(onTap: () {
                        Get.back();
                      }),
                      Expanded(child: Container()),
                      const FavoriteButton(),
                    ],
                  ),
                  Hero(
                    tag: controller.tag,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * .25,
                      width: MediaQuery.of(context).size.width * .8,
                      child: Image(
                        image: AssetImage(
                          controller.sweetImage,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 32,
                bottom: 24,
              ),
              height: MediaQuery.of(context).size.height * .55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  TitleAndPrice(
                    sweetName: controller.sweetName,
                    sweetPrice: controller.sweetPrice,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AdditionalInformationBox(
                    borderColor: controller.color,
                    preparationTime: controller.preparationTime,
                    servings: controller.serving,
                    kcal: controller.kcal,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Description(),
                  Expanded(child: Container()),
                  AppButton(
                    haveIcon: true,
                    label: 'Add to cart',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
