import 'package:project_flutter_complet/app/data/provider/api.dart';

class Repository {
  final ApiClient apiClient;

  Repository({required this.apiClient});
  getAll() {
    return apiClient.getAll();
  }
}
