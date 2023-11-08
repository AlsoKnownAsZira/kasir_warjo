import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../../routes/app_pages.dart';
import 'package:lottie/lottie.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: const PageDecoration(
            pageColor: Color.fromARGB(255, 237, 251, 255),
          ),
          title: "Selamat Datang di Warjo App!",
          body: "Aplikasi kasir supermarket WarJo",
          image: Center(
            child: Lottie.asset('lib/assets/lotties/Login.json'),
          ),
        )
      ],
      showBackButton: false,
      next: const Text("Next"),
      done: const Text(
        "DONE!",
      ),
      onDone: () {
        Get.toNamed(Routes.LOGIN);
      },
    );
  }
}
