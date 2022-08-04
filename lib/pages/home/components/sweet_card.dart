import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';
import 'package:sweets_store_app/style/app_images.dart';

class SweetCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;
  final Color cardColor;
  final int index;
  const SweetCard({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.cardColor,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: index % 2 == 1 ? 200 : 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  height: index % 2 == 1 ? 130 : 80,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                      productImage,
                    ),
                  ),
                ),
                Text(
                  productName,
                  style: const TextStyle(
                    color: AppColors.titleTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
            Align(
              alignment: const Alignment(0, 1),
              child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '\$$productPrice',
                    style: const TextStyle(
                      color: AppColors.titleTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
