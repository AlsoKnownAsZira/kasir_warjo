import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      Get.offNamed('/home');
    }else{
      Get.snackbar('Error', 'Username atau Password salah',backgroundColor: Colors.red);
    }
  }
}
