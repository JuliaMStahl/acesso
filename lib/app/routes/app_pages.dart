import 'package:get/get.dart';

import '../modules/acesso_page/bindings/acesso_page_binding.dart';
import '../modules/acesso_page/views/acesso_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ACESSO_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.ACESSO_PAGE,
      page: () => const AcessoPageView(),
      binding: AcessoPageBinding(),
    ),
  ];
}
