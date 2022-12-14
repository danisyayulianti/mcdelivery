import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mcdelivery/views/home.dart';

class LoginController extends GetxController {
  late TextEditingController email, password;
  var focusEmail = FocusNode().obs;
  var focusPassword = FocusNode().obs;
  var isVisible = false.obs;

  void login() {
    if (email.text == 'danisya@gmail.com' && password.text == '123') {
      Get.to(Home());
      Get.snackbar('Sukses', 'Login Berhasil');
    } else {
      Get.snackbar('Gagal', 'Login Gagal');
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    focusEmail.value = FocusNode();
    focusPassword.value = FocusNode();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    focusEmail.value.dispose();
    focusPassword.value.dispose();
    super.dispose();
  }
}
