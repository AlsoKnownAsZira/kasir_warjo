import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir_warjo/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController userC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  String corrUser = 'naufal';
  String corrPass = 'warjo';
  void tapped() {
    isHidden.toggle();
  }
  void checkPass(){
    if(userC.text ==corrUser && passC.text == corrPass){
      Get.offAllNamed( Routes.HOME);
    }else{
      Get.snackbar('Error', 'Username atau Password salah',backgroundColor: Colors.red);
    }
  }
}
