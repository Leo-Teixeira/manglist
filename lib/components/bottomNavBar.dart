import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:manglist/components/appBar.dart';
import 'package:manglist/components/calendar.dart';
import 'package:manglist/components/home.dart';
import 'package:manglist/components/search.dart';
import 'package:manglist/components/sortie.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> pages = [
    Home(),
    MySerie(),
    Calendar(),
    Search(),
  ];

  final List<String> titles = [
    'Acceuil',
    'Mes series',
    'Prochaines sorties',
    'Rechercher',
  ];

  final List<FluidNavBarIcon> fluidNavBarIcons = [
    FluidNavBarIcon(icon: FontAwesome5.home),
    FluidNavBarIcon(icon: FontAwesome5.accessible_icon),
    FluidNavBarIcon(icon: FontAwesome5.acquisitions_incorporated),
    FluidNavBarIcon(icon: FontAwesome5.adn),
  ];

  @override
  Widget build(BuildContext context) {
    final RxInt selectedIndex = 0.obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Obx(() => Text(titles[selectedIndex.value])),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome5.search),
          ),
          const CircleAvatar(child: Icon(FontAwesome5.user))
        ],
      ),
      body: IndexedStack(
        index: selectedIndex.value,
        children: pages,
      ),
      bottomNavigationBar: FluidNavBar(
        icons: fluidNavBarIcons,
        onChange: (index) {
          selectedIndex.value = index;
        },
        defaultIndex: 0,
        scaleFactor: 1.5,
        style: FluidNavBarStyle(
            barBackgroundColor: Colors.black,
            iconUnselectedForegroundColor: Colors.white,
            iconSelectedForegroundColor: Colors.black,
            iconBackgroundColor: Colors.red),
      ),
    );
  }
}
