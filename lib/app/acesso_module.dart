import 'package:acesso/app/controllers/acesso_controller.dart';
import 'package:acesso/app/views/acesso_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AcessoModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(AcessoController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (_) => AcessoView(
        controller: Modular.get<AcessoController>(),
      ),
    );
  }
}
