import 'package:fernando_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful', color: Colors.black, onPressed: () {}),
          CustomFlatButton(
              text: 'Contador Provider', color: Colors.black, onPressed: () {}),
          CustomFlatButton(
              text: '404 Page', color: Colors.black, onPressed: () {})
        ],
      ),
    );
  }
}
