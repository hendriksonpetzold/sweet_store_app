// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

class SweetCardModel {
  String sweetImage;
  String sweetName;
  String price;
  String servings;
  String kcal;
  String preparationTime;
  Color color;
  SweetCardModel({
    required this.sweetImage,
    required this.sweetName,
    required this.price,
    required this.servings,
    required this.kcal,
    required this.preparationTime,
    required this.color,
  });
}
