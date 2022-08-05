import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool isFavorite = RxBool(false);

    return InkWell(
      onTap: () {
        isFavorite.value = !isFavorite.value;
      },
      child: Obx(
        () {
          return Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: isFavorite.value
                ? const Icon(
                    Icons.favorite,
                    color: AppColors.buttonColor,
                  )
                : const Icon(
                    Icons.favorite_outline,
                    color: AppColors.buttonColor,
                  ),
          );
        },
      ),
    );
  }
}
