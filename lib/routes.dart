import 'package:get/get.dart';
import 'package:manglist/components/bottomNavBar.dart';
import 'package:manglist/components/calendar.dart';
import 'package:manglist/components/home.dart';
import 'package:manglist/components/search.dart';
import 'package:manglist/components/sortie.dart';

import 'containers/morePublicationsMangas.dart';

class Routes {
  static const bottomNavBar = '/';
  static const home = '/home';
  static const calendar = '/calendar';
  static const myserie = '/myserie';
  static const search = '/search';
  static const morePublicationsMangas = "/morePublicationsMangas";
}

final getPages = [
  GetPage(name: Routes.bottomNavBar, page: () => BottomNavBar()),
  GetPage(name: Routes.home, page: () => const Home()), // Vue d'accueil
  GetPage(name: Routes.calendar, page: () => const Calendar()), // Autre vue
  GetPage(name: Routes.myserie, page: () => const MySerie()),
  GetPage(name: Routes.search, page: () => const Search()),
  GetPage(
      name: Routes.morePublicationsMangas,
      page: () => const MorePublicationsMangas())
];
