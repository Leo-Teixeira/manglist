import 'package:flutter/material.dart';
import 'package:manglist/components/bottomNavBar.dart';
import 'package:manglist/components/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    home: Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}
