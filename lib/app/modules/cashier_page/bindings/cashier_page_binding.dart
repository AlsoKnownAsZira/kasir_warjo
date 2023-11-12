import 'package:get/get.dart';

import '../controllers/cashier_page_controller.dart';

class CashierPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CashierPageController>(
      () => CashierPageController(),
    );
  }
}
