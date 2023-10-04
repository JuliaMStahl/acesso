import 'package:acesso/app/acesso_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AcessoController extends ChangeNotifier {
  final usuarioController = TextEditingController();

  final senhaController = TextEditingController();
  final senhaFocus = FocusNode();

  goToNextPage() {
    Modular.dispose<AcessoModule>();
    Modular.to.navigate('/dashboard/', arguments: usuarioController.text);
    print(usuarioController.text);
  }
}