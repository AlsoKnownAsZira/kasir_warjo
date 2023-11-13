import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../../widgets/custom_navigation_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromARGB(255, 23, 234, 217),
                Color.fromARGB(255, 96, 120, 234)
              ])),
        ),
        title: const Text('KasirWarjo'),
        actions: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 96, 120, 234),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 96, 120, 234),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
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
