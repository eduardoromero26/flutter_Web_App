import 'package:fernando_web/ui/pages/counter_page.dart';
import 'package:fernando_web/ui/pages/counter_provider_page.dart';
import 'package:fernando_web/ui/pages/page_404.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

//Switch para generar los nombres de rutas
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterPage(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderPage(), '/provider');
      default:
        return _fadeRoute(const Page404(), '/404');
    }
  }

  //funciona para configurar el nombre y url de la ruta --- Añade un fade al transicionar de screen
  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        transitionDuration: const Duration(milliseconds: 200),
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
