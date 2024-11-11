import 'package:final_project/repository/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final AuthRepo authRepo = Get.find();

  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final emailFocus = FocusNode();
  final usernameFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();

  Future<void> signUp(String email, String username, String conPassword) async {
    await authRepo.signUp(email, username, conPassword);
  }
}
