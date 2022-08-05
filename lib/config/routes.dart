import 'package:get/get.dart';
import 'package:sweets_store_app/pages/home/home_page.dart';
import 'package:sweets_store_app/pages/on_boarding/on_boarding_page.dart';
import 'package:sweets_store_app/pages/sweet_detail/sweet_detail_page.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => const OnBoardingPage(),
    ),
    GetPage(
      name: '/home_page',
      page: () => HomePage(),
      children: [
        GetPage(
          name: '/detail_page',
          page: () => SweetDetailPage(),
        ),
      ],
    ),
  ];
}
