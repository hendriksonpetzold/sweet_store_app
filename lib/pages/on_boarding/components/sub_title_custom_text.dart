import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class SubTitleCustomText extends StatelessWidget {
  const SubTitleCustomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 35,
      child: Column(
        children: const [
          Text(
            'There is something',
            style: TextStyle(
              color: AppColors.subTitleTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'for everyone to taste',
            style: TextStyle(
              color: AppColors.subTitleTextColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
