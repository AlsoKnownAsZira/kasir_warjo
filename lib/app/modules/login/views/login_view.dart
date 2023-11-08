import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color.fromARGB(255, 237, 251, 255),
        appBar: AppBar(
          title: const Text('Login', style: TextStyle(color: Colors.black),),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 237, 251, 255),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('lib/assets/images/warjo.png'),
              SizedBox(height: 20,),
              TextField(),
              SizedBox(height: 20,),
              TextField(),
            ],
          ),
        ));
  }
}
