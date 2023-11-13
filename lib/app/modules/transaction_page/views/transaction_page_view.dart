import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir_warjo/app/widgets/custom_navigation_bar.dart';

import '../controllers/transaction_page_controller.dart';

class TransactionPageView extends GetView<TransactionPageController> {
  const TransactionPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TransactionPageView'),
        centerTitle: true,
      ),
       bottomNavigationBar: CustomNavigationBar(
        initialActiveIndex: 4,
       ),
      body: const Center(
        child: Text(
          'TransactionPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
