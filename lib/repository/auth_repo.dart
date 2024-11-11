import 'dart:convert';

import 'package:final_project/screen/home/home.dart';
import 'package:final_project/screen/landing/landing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo extends GetxController {
  //loading indicator
  RxBool isLoading = false.obs;

  //signIn
  Future<void> signIn(String username, String password) async {
    try {
      //loading
      isLoading.value = true;

      //session login
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('isLogin', true);

      var uri = 'http://10.0.2.2/levelup/check_data.php';
      final res = await http.post(Uri.parse(uri),
          body: {'username': username, 'password': password});
      final response = jsonDecode(res.body);
      if (response['success'] == 'true') {
        //pindah halaman
        Get.offAll(() => const HomePage());
      } else {
        //snackbar
        Get.snackbar('Error!', response['error'],
            backgroundColor: Colors.red,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            margin: const EdgeInsets.all(16.0));
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading.value = false;
    }
  }

  //signup
  Future<void> signUp(String email, String username, String conPassword) async {
    try {
      //loading
      isLoading.value = true;

      //session login
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('isLogin', true);
      var uri = 'http://10.0.2.2/levelup/insert_data.php';
      final res = await http.post(Uri.parse(uri), body: {
        'email': email,
        'username': username,
        'conPassword': conPassword
      });

      final response = jsonDecode(res.body);
      if (response['success'] == 'true') {
        //pindah halaman
        Get.offAll(() => const HomePage());
      } else {
        //snackbar error
        Get.snackbar('Error!', response['error'],
            backgroundColor: Colors.red,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            margin: const EdgeInsets.all(16.0));
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('isLogin');

    Get.offAll(() => const LandingPage());
  }
}
