import 'package:fernando_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('404',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              const Text('No se encontró la página',
                  style: TextStyle(fontSize: 20)),
              CustomFlatButton(
                  text: 'Regresar',
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/stateful')),
            ],
          ),
        ),
      ),
    );
  }
}
