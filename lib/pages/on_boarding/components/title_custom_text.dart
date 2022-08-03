import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class TitleCustomText extends StatelessWidget {
  const TitleCustomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 24,
          ),
          children: [
            TextSpan(text: 'You will'),
            TextSpan(
              text: ' be delighted',
              style: TextStyle(color: AppColors.focusTextColor),
            ),
            TextSpan(text: ' with our sweets!'),
          ],
        ),
      ),
    );
  }
}
