import 'package:fernando_web/ui/shared/custom_app_menu.dart';
import 'package:fernando_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

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
                  child: Text('Counter: ${CounterProvider.counter}',
                      style: const TextStyle(
                          fontSize: 80, fontWeight: FontWeight.bold)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomFlatButton(
                      text: 'Incrementar',
                      onPressed: () => counterProvider.increaseCounter()),
                  CustomFlatButton(
                      text: 'Decrementar',
                      onPressed: () => counterProvider.decreaseCounter()),
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
