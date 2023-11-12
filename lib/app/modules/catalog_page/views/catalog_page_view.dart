import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:kasir_warjo/app/widgets/custom_navigation_bar.dart';
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
        bottomNavigationBar: CustomNavigationBar(
          initialActiveIndex: 1,
        ),
    
      body: const Center(
        child: Text(
          'CatalogPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
