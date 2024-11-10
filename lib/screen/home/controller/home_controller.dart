import 'package:final_project/repository/auth_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final AuthRepo authRepo = Get.find();

  void logout() {
    authRepo.logout();
  }
}
