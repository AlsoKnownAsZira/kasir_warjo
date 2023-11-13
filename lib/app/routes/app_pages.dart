import 'package:get/get.dart';

import '../modules/cashier_page/bindings/cashier_page_binding.dart';
import '../modules/cashier_page/views/cashier_page_view.dart';
import '../modules/catalog_page/bindings/catalog_page_binding.dart';
import '../modules/catalog_page/views/catalog_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/order_page/bindings/order_page_binding.dart';
import '../modules/order_page/views/order_page_view.dart';
import '../modules/splash_Screen/bindings/splash_screen_binding.dart';
import '../modules/splash_Screen/views/splash_screen_view.dart';
import '../modules/transaction_page/bindings/transaction_page_binding.dart';
import '../modules/transaction_page/views/transaction_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.CATALOG_PAGE,
      page: () => const CatalogPageView(),
      binding: CatalogPageBinding(),
    ),
    GetPage(
      name: _Paths.CASHIER_PAGE,
      page: () => const CashierPageView(),
      binding: CashierPageBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_PAGE,
      page: () => const OrderPageView(),
      binding: OrderPageBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_PAGE,
      page: () => const TransactionPageView(),
      binding: TransactionPageBinding(),
    ),
  ];
}
