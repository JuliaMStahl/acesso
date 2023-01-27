import 'package:dependency_manager/dependency_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/acesso_page_controller.dart';

class AcessoPageView extends GetView<AcessoPageController> {
  const AcessoPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
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
                const Text(
                  'Faça o login',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: controller.usuarioController,
                  decoration: const InputDecoration(
                    labelText: 'Usuário',
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
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Get.toNamed(
                    RedirectTo.ROUTES_PERFIL,
                    arguments: controller.usuarioController.text,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade800),
                  child: Text('Entrar'.toUpperCase()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
