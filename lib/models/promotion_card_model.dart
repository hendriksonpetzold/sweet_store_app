import 'package:flutter/cupertino.dart';

class PromotionCardModel {
  String discount;
  String productDiscounted;
  String subTitle;
  String image;
  Color color;
  PromotionCardModel({
    required this.discount,
    required this.productDiscounted,
    required this.subTitle,
    required this.image,
    required this.color,
  });
}
