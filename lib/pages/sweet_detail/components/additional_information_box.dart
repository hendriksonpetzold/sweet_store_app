import 'package:flutter/material.dart';
import 'package:sweets_store_app/style/app_images.dart';

class AdditionalInformationBox extends StatelessWidget {
  final Color borderColor;
  final String preparationTime;
  final String servings;
  final String kcal;
  const AdditionalInformationBox({
    Key? key,
    required this.borderColor,
    required this.preparationTime,
    required this.servings,
    required this.kcal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 14,
                bottom: 8,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image(
                      image: AssetImage(
                        AppImages.clock,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(preparationTime),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 14,
                bottom: 8,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.restaurant,
                      color: Color(0xFF6B6B6B),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(servings),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 14,
                bottom: 8,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image(
                      image: AssetImage(
                        AppImages.fire,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('$kcal kcal'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
