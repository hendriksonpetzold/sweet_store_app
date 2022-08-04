import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/pages/home/home_controller.dart';
import 'package:sweets_store_app/style/app_colors.dart';
import 'package:sweets_store_app/style/app_images.dart';

class CustomAppBar extends GetView<HomeController> {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: Image(
              image: AssetImage(
                AppImages.circleAvatarImage,
              ),
            ),
          ),
          Obx(
            () {
              return DropdownButton(
                style: const TextStyle(
                  color: AppColors.titleTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                value: controller.selectedLocation.value,
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Canada',
                    child: Text(
                      'Canada, Ottawa',
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Vegas',
                    child: Text('Las Vegas, Nevada'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'NewYork',
                    child: Text('New York, New York'),
                  ),
                ],
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    controller.selectedLocation.value = newValue;
                  }
                },
              );
            },
          ),
          Container()
        ],
      ),
    );
  }
}
