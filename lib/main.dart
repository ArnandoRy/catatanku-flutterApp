import 'package:catatanku/pages/home_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // theme: ThemeData(useMaterial3: false),
      // getPages: AppRoute.pages,
    );
  }
}
