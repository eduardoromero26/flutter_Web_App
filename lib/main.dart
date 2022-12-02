import 'package:fernando_web/providers/counter_provider.dart';
import 'package:fernando_web/router/route_generator.dart';
import 'package:fernando_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Web App',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      //navigatorKey: ,

      //creando el mainlayout
      builder: (_, child) {
        return MianLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
    );
  }
}
