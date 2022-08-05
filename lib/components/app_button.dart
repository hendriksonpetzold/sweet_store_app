import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final bool haveIcon;
  const AppButton({
    Key? key,
    required this.label,
    this.onTap,
    required this.haveIcon,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            haveIcon
                ? Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: const Icon(
                      Icons.local_mall_outlined,
                      color: AppColors.buttonTextColor,
                      size: 20,
                    ),
                  )
                : Container(),
            Text(
              label,
              style: const TextStyle(
                color: AppColors.buttonTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
