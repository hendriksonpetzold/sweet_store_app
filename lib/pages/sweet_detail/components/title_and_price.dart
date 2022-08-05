import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class TitleAndPrice extends StatelessWidget {
  final String sweetName;
  final String sweetPrice;
  const TitleAndPrice({
    Key? key,
    required this.sweetName,
    required this.sweetPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Text(
            sweetName,
            style: const TextStyle(
              color: AppColors.titleTextColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          Text(
            '\$$sweetPrice',
            style: const TextStyle(
              color: AppColors.titleTextColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
