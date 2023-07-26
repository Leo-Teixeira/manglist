import 'package:get/get.dart';
import 'package:manglist/components/home.dart';

class Routes {
  static const home = '/';
  static const other = '/other';

  static final routes = [
    GetPage(name: home, page: () => Home()), // Vue d'accueil
    GetPage(name: other, page: () => Calendar()), // Autre vue
    GetPage(name: other, page: () => MySerie()), 
  ];
}
