import 'package:final_project/repository/auth_repo.dart';
import 'package:final_project/screen/auth/sign_in/controller/sign_in_controller.dart';
import 'package:final_project/screen/auth/sign_up/controller/sign_up_controller.dart';
import 'package:final_project/screen/home/controller/home_controller.dart';
import 'package:final_project/screen/landing/controller/landing_controller.dart';
import 'package:final_project/screen/landing/landing.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  Get.put(AuthRepo());
  Get.put(LandingController());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //controllers
    Get.lazyPut(() => SignInController(), fenix: true);
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);

    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: LandingPage());
  }
}
