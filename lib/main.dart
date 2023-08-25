import 'package:flutter/material.dart';
import 'package:manglist/components/bottomNavBar.dart';
import 'package:manglist/components/home.dart';
import 'package:get/get.dart';
import 'package:manglist/routes.dart';

void main() {
  runApp(GetMaterialApp(
    getPages: getPages,
    initialRoute: Routes.bottomNavBar,
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
