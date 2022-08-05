import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SweetDetailController extends GetxController {
  final Color color = Get.arguments['color'];
  final String sweetImage = Get.arguments['sweetImage'];
  final String sweetName = Get.arguments['sweetName'];
  final String sweetPrice = Get.arguments['price'];
  final String serving = Get.arguments['servings'];
  final String preparationTime = Get.arguments['preparationTime'];
  final String kcal = Get.arguments['kcal'];
  final String tag = Get.arguments['tag'];
}
