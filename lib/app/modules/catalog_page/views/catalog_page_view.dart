import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../controllers/catalog_page_controller.dart';
import '../../../routes/app_pages.dart';

class CatalogPageView extends GetView<CatalogPageController> {
  const CatalogPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CatalogPageView'),
        centerTitle: true,
          ),
        bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.inventory_2_outlined, title: 'Catalog'),
              TabItem(icon: Icons.shopping_cart_outlined, title: 'Cashier'),
              TabItem(icon: Icons.text_snippet_outlined, title: 'Order'),
              TabItem(icon: Icons.compare_arrows_sharp, title: 'Transaction'),
            ],
            initialActiveIndex: 1,
            onTap: (index) {
              switch (index) {
                case 0:
                  Get.offNamed(Routes.HOME);
                  break;
                case 1:
                  Get.offNamed(Routes.CATALOG_PAGE);
                  break;
                case 2:
                  Get.offNamed(Routes.CASHIER_PAGE);
                  break;
                case 3:
                  Get.offNamed(Routes.ORDER_PAGE);
                  break;
                case 4:
                  Get.offNamed(Routes.TRANSACTION_PAGE);
                  break;
              }
            }),
    
      body: const Center(
        child: Text(
          'CatalogPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
