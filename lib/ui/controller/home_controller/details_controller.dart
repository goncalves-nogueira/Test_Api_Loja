import 'package:get/state_manager.dart';
import 'package:project_flutter_complet/app/repository/repository.dart';

import '../../../app/model/product_model.dart';


class DetailsController extends GetxController {
  final Repository repository;

  DetailsController({required this.repository}) : assert(repository != null);

  final _product = <ProductModel>[].obs;
  get product => this._product.value;
  set product(value) => this._product.value = value;

  editar(post) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }
}
