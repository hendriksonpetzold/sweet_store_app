import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/pages/home/home_controller.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class SearchFormField extends GetView<HomeController> {
  const SearchFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.backGroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFC2C1C1),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          const Icon(
            Icons.search,
            size: 20,
            color: AppColors.lightGrey,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextFormField(
              cursorColor: AppColors.darkGrey,
              controller: controller.searchEditingController,
              onChanged: (value) {
                controller.sweetSearch();
              },
              decoration: const InputDecoration(
                hintText: 'Search',
                isDense: true,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
