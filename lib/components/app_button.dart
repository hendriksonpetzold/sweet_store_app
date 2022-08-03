import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  const AppButton({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 280,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: AppColors.buttonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
