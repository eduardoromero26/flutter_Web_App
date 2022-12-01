import 'package:fernando_web/ui/shared/custom_app_menu.dart';
import 'package:fernando_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({super.key});

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 15;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomAppMenu(),
              const Spacer(),
              const Text(
                'Contador Provider',
                style: TextStyle(fontSize: 20.0),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('Counter: $counter',
                      style: const TextStyle(
                          fontSize: 80, fontWeight: FontWeight.bold)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomFlatButton(
                      text: 'Incrementar',
                      onPressed: () => setState(() => counter++)),
                  CustomFlatButton(
                      text: 'Decrementar',
                      onPressed: () => setState(() => counter--)),
                ],
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
