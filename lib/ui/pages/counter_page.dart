import 'package:fernando_web/ui/shared/custom_app_menu.dart';
import 'package:fernando_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomAppMenu(),
            const Spacer(),
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
    );
  }
}
