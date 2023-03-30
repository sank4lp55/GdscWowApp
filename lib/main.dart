import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/home.dart';
import 'package:fluttertest/pages/output.dart';
import 'package:fluttertest/pages/qr_screen.dart';
import 'package:fluttertest/qr_overlay.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:fluttertest/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
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
      home: FutureBuilder(
        future: _initialization,
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            print("error");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Home();
          }
          return CircularProgressIndicator();
        }),
      ),
    );
  }
}
