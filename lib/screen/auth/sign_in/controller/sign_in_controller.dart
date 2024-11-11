import 'package:final_project/repository/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final AuthRepo authRepo = Get.find();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final usernameFocus = FocusNode();
  final passwordFocus = FocusNode();

  Future<void> signIn(String username, String password) async {
    await authRepo.signIn(username, password);
  }
}
