import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.inventory_2_outlined, title: 'Catalog'),
        TabItem(icon: Icons.shopping_cart_outlined, title: 'Cashier'),
        TabItem(icon: Icons.text_snippet_outlined, title: 'Order'),
        TabItem(icon: Icons.compare_arrows_sharp, title: 'Transaction'),
      ]),
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
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
