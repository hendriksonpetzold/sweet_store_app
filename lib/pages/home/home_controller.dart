import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/models/promotion_card_model.dart';
import 'package:sweets_store_app/models/sweet_card_model.dart';
import 'package:sweets_store_app/style/app_images.dart';

class HomeController extends GetxController {
  TextEditingController searchEditingController = TextEditingController();
  RxString selectedLocation = RxString('Vegas');
  RxList searchSweetCardList = RxList([]);

  @override
  void onInit() {
    searchSweetCardList.value = sweetCardList;
    super.onInit();
  }

  void sweetSearch() {
    List<SweetCardModel> newList = sweetCardList
        .where((item) => item.sweetName.contains(searchEditingController.text))
        .toList();
    searchSweetCardList.value = newList;
  }

  List<SweetCardModel> sweetCardList = [
    SweetCardModel(
      sweetName: 'Lollipop',
      sweetImage: AppImages.lollipop,
      price: '1,50',
      servings: '1 serving',
      kcal: '80',
      preparationTime: '0mim',
      color: const Color(0XFFded8ff),
    ),
    SweetCardModel(
      sweetName: 'Cupcakes',
      sweetImage: AppImages.cupcake,
      price: '6,00',
      servings: '2 serving',
      kcal: '360',
      preparationTime: '25mim',
      color: const Color(0XFFc4f0f0),
    ),
    SweetCardModel(
      sweetName: 'Donuts',
      sweetImage: AppImages.donuts,
      price: '10,50',
      servings: '5 serving',
      kcal: '600',
      preparationTime: '40mim',
      color: const Color(0XFFffdbd2),
    ),
    SweetCardModel(
      sweetName: 'Macaroons',
      sweetImage: AppImages.macaroons,
      price: '8,00',
      servings: '2 serving',
      kcal: '240',
      preparationTime: '20mim',
      color: const Color(0XFFfff7d6),
    ),
    SweetCardModel(
      sweetName: 'Brownie',
      sweetImage: AppImages.brownie,
      price: '2,50',
      servings: '1 serving',
      kcal: '150',
      preparationTime: '15mim',
      color: const Color(0XFFc4f0f0),
    ),
    SweetCardModel(
      sweetName: 'Strawberry Cake',
      sweetImage: AppImages.strawberryCake,
      price: '4,50',
      servings: '1 serving',
      kcal: '350',
      preparationTime: '10mim',
      color: const Color(0XFFffdbd2),
    ),
    SweetCardModel(
      sweetName: 'Chocolate Cake',
      sweetImage: AppImages.chocolateCake,
      price: '4,50',
      servings: '1 serving',
      kcal: '450',
      preparationTime: '10mim',
      color: const Color(0XFFded8ff),
    ),
  ];

  List<PromotionCardModel> promotionCardList = [
    PromotionCardModel(
      discount: '15',
      productDiscounted: 'for all cakes',
      subTitle: 'for our regular customers',
      image: AppImages.strawberryCake,
      color: const Color(0XFFffdbd2),
    ),
    PromotionCardModel(
      discount: '10',
      productDiscounted: 'on cupcakes',
      subTitle: 'just on friday',
      image: AppImages.cupcake,
      color: const Color(0XFFc4f0f0),
    ),
    PromotionCardModel(
      discount: '50',
      productDiscounted: 'for all lollipos',
      subTitle: 'if you buy 2 cupcakes',
      image: AppImages.lollipop,
      color: const Color(0XFFded8ff),
    ),
  ];
}
