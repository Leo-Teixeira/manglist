import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:manglist/constant/globalColors.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:manglist/routes.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    List<BannerModel> listBanners = [
      BannerModel(id: "1", imagePath: 'assets/profil.jpg'),
      BannerModel(id: "2", imagePath: 'assets/profil.jpg'),
      BannerModel(id: "3", imagePath: 'assets/profil.jpg'),
      BannerModel(id: "4", imagePath: 'assets/profil.jpg'),
      BannerModel(id: "5", imagePath: 'assets/profil.jpg'),
      BannerModel(id: "6", imagePath: 'assets/profil.jpg'),
      BannerModel(id: "7", imagePath: 'assets/profil.jpg'),
    ];
    return Scaffold(
      backgroundColor: backgroundPage,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            BannerCarousel.fullScreen(
              banners: listBanners,
              customizedIndicators: const IndicatorModel.animation(
                  width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
              height: 650,
              activeColor: buttonColor,
              disableColor: backgroundColor,
              animation: true,
              borderRadius: 10,
              indicatorBottom: false,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.morePublicationsMangas);
                },
                child: Text("Voir plus"))
          ],
        ),
      ),
    );
  }
}
