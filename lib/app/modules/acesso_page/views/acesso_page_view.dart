import 'package:acesso/generated/locales.g.dart';
import 'package:dependency_manager/dependency_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/acesso_page_controller.dart';
import 'package:shared_lib/utils/widgets/botao_padrao.dart';

class AcessoPageView extends GetView<AcessoPageController> {
  const AcessoPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.login.tr),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            color: Colors.pink.shade200,
            padding: const EdgeInsets.all(16),
            width: Get.width * 0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.fazer_login.tr,
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: controller.usuarioController,
                  decoration: InputDecoration(
                    labelText: LocaleKeys.usuario.tr,
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                  onSubmitted: (value) => controller.senhaFocus.requestFocus(),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: controller.senhaController,
                  focusNode: controller.senhaFocus,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: LocaleKeys.senha.tr,
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                BotaoPadrao(
                  texto: LocaleKeys.entrar.tr,
                  onPressed: () => Get.toNamed(
                    RedirectTo.ROUTES_DASHBOARD,
                    arguments: controller.usuarioController.text,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
