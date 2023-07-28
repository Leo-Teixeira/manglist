import 'package:get/get.dart';
import 'package:manglist/components/calendar.dart';
import 'package:manglist/components/home.dart';
import 'package:manglist/components/search.dart';
import 'package:manglist/components/sortie.dart';

class Routes {
  static const home = '/';
  static const calendar = '/calendar';
  static const myserie = '/myserie';
  static const search = '/search';

  static final routes = [
    GetPage(name: home, page: () => const Home()), // Vue d'accueil
    GetPage(name: calendar, page: () => const Calendar()), // Autre vue
    GetPage(name: myserie, page: () => const MySerie()),
    GetPage(name: search, page: () => Search())
  ];
}
