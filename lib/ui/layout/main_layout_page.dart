import 'package:fernando_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MianLayoutPage extends StatelessWidget {
  //child para el context del main
  final Widget child;
  const MianLayoutPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            const Spacer(),
            Expanded(child: child),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
