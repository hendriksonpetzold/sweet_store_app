import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/pages/home/components/carousel_promotions.dart';
import 'package:sweets_store_app/pages/home/components/custom_app_bar.dart';
import 'package:sweets_store_app/pages/home/components/grid_list_view.dart';
import 'package:sweets_store_app/pages/home/components/search_form_field.dart';

import 'package:sweets_store_app/pages/home/home_controller.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: const [
              CustomAppBar(),
              SizedBox(
                height: 16,
              ),
              SearchFormField(),
              SizedBox(
                height: 24,
              ),
              CarouselPromotions(),
              SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular sweets',
                  style: TextStyle(
                    color: AppColors.titleTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
