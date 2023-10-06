import 'package:flutter/material.dart';

class AcessoController extends ChangeNotifier {
  final usuarioController = TextEditingController();

  final senhaController = TextEditingController();
  final senhaFocus = FocusNode();
}
