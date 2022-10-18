import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_store_app/config/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sweet Store App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: Routes.routes,
    );
  }
}
