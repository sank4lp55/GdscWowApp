import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/home.dart';
import 'package:fluttertest/pages/qr_screen.dart';
import 'package:fluttertest/qr_overlay.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:fluttertest/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GdscApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
      ),
      home: Home(),
    );
  }
}
