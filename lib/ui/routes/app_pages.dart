import 'package:get/get.dart';

import '../home/home_page.dart';
import '../new_product/new_product_page.dart';

part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.PRODUCT,
      page: () => const NewProductPage(),
    ),
  ];
}
