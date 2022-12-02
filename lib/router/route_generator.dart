import 'package:fernando_web/ui/views/counter_provider_view.dart';
import 'package:fernando_web/ui/views/counter_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import '../ui/views/view_404.dart';

//Switch para generar los nombres de rutas
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterView(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(), '/provider');
      default:
        return _fadeRoute(const View404(), '/404');
    }
  }

  //funciona para configurar el nombre y url de la ruta --- Añade un fade al transicionar de screen
  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        transitionDuration: const Duration(milliseconds: 100),
        pageBuilder: (_, __, ___) => child,
        transitionsBuilder: (_, animation, __, ___) =>
            //Fade animación
            //is client use a web device
            kIsWeb
                //fadein
                ? FadeTransition(opacity: animation, child: child)
                //slide for smartphones
                : CupertinoPageTransition(
                    primaryRouteAnimation: animation,
                    secondaryRouteAnimation: __,
                    linearTransition: true,
                    child: child));
  }
}
