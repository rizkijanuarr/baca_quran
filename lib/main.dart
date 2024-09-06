import 'package:baca_quran/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: "rizkijanuar.com",
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ),
  );
}
