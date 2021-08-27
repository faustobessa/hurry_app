import 'package:flutter_modular/flutter_modular.dart';
import 'package:hurry/app/modules/auth/auth_module.dart';
import 'package:hurry/app/modules/eventos/eventos_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', transition: TransitionType.upToDown, module: AuthModule()),
    ModuleRoute(
      '/home',
      transition: TransitionType.scale,
      module: HomeModule(),
    ),
    ModuleRoute(
      '/eventos',
      transition: TransitionType.rightToLeftWithFade,
      module: EventosModule(),
    ),
  ];
}
