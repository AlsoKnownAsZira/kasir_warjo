import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir_warjo/app/widgets/custom_navigation_bar.dart';

import '../controllers/cashier_page_controller.dart';
import '../../../routes/app_pages.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
class CashierPageView extends GetView<CashierPageController> {
  const CashierPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CashierPageView'),
        centerTitle: true,
      ),
       bottomNavigationBar: CustomNavigationBar(
        initialActiveIndex: 2,
       ),
      body: const Center(
        child: Text(
          'CashierPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
