import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/custom_navigation_bar.dart';
class HomeView extends GetView<HomeController> {
 
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      bottomNavigationBar:  CustomNavigationBar(
    initialActiveIndex: 0,
  ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
