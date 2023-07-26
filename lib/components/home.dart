import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Color(0xff383838),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Manglist"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesome5.search),
          ),
          CircleAvatar(child: Icon(FontAwesome5.person_booth))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 15,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: Image.asset("assets/profil.jpg"),
              ),
              options: CarouselOptions(height: 500),
            ),
            Column(
              children: [
                Text("Dernière sortie"),
                CarouselSlider.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    child: Image.asset("assets/profil.jpg"),
                  ),
                  options: CarouselOptions(height: 500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
