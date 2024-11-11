import 'package:final_project/screen/home/home.dart';
import 'package:final_project/screen/landing/landing.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingController extends GetxController {
  @override
  Future<void> onReady() async {
    super.onReady();
    final prefs = await SharedPreferences.getInstance();
    final login = prefs.getBool('isLogin');
    login != null
        ? Get.offAll(() => const HomePage())
        : Get.offAll(() => const LandingPage());
  }
}
