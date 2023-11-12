import 'package:get/get.dart';

import '../controllers/catalog_page_controller.dart';

class CatalogPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CatalogPageController>(
      () => CatalogPageController(),
    );
  }
}
