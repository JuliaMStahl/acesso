import 'package:get/get.dart';

import '../controllers/acesso_page_controller.dart';

class AcessoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcessoPageController>(
      () => AcessoPageController(),
    );
  }
}
