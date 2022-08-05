import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_colors.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .60,
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Description',
              style: TextStyle(
                color: AppColors.titleTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'The beest cupcakes in the world. We made them as delicious as your momo makes them!',
              style: TextStyle(
                color: AppColors.subTitleTextColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
