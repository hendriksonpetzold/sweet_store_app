import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/models/sweet_card_model.dart';
import 'package:sweets_store_app/style/app_images.dart';

class HomeController extends GetxController {
  TextEditingController searchEditingController = TextEditingController();
  RxString selectedLocation = RxString('Vegas');

  List<SweetCardModel> sweetCardList = [
    SweetCardModel(
      sweetName: 'Lollipop',
      sweetImage: AppImages.lollipop,
      price: '3,50',
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
      color: const Color(0XFFffdbd2),
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
  ];
}
