import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/components/app_button.dart';
import 'package:sweets_store_app/pages/on_boarding/components/sub_title_custom_text.dart';
import 'package:sweets_store_app/pages/on_boarding/components/title_custom_text.dart';
import 'package:sweets_store_app/style/app_colors.dart';
import 'package:sweets_store_app/style/app_images.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backGroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Container(
                  padding: const EdgeInsets.all(32),
                  height: MediaQuery.of(context).size.height * .3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.backGroundColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      const TitleCustomText(),
                      const SizedBox(
                        height: 16,
                      ),
                      const SubTitleCustomText(),
                      const SizedBox(
                        height: 16,
                      ),
                      AppButton(
                        haveIcon: false,
                        label: 'It\'s wonderful',
                        onTap: () {
                          Get.toNamed('/home_page');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
