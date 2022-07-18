import 'package:get/get.dart';

import '../../ui/controller/home_controller/home_controller.dart';
import '../data/provider/api.dart';
import '../repository/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(repository: Repository(apiClient: ApiClient()));
    });
  }
}
