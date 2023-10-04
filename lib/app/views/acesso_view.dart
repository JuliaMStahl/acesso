import 'package:flutter/material.dart';

import '../controllers/acesso_controller.dart';

class AcessoView extends StatelessWidget {
  final AcessoController controller;

  const AcessoView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            color: Colors.pink.shade200,
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fazer login',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: controller.usuarioController,
                  decoration: InputDecoration(
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
                  decoration: InputDecoration(
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
                  child: Text('Entrar'),
                  onPressed: controller.goToNextPage,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
