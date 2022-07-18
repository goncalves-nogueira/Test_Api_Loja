import 'package:get/get.dart';

import '../../../app/model/product_model.dart';
import '../../../app/repository/repository.dart';

class HomeController extends GetxController {
  final Repository repository;

  HomeController({required this.repository}) {
    getAll();
  }

  final _productsList = <ProductModel>[].obs;
  get productList => _productsList.value;
  set productsList(value) => _productsList.value = value;

  getAll() {
    repository.getAll().then((data) {
      // _productsList.value = data;
    });
  }
}
