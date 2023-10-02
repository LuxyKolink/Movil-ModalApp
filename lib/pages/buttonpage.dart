import 'package:flutter/material.dart';
import 'package:modal/widgets/button.dart';
import 'package:modal/widgets/buttonlist_widget.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: Button(
          onPressed: () {
            _displayBottomSheet(context);
          },
          text: 'Mostrar Opciones',
        ),
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) => const SizedBox(
            height: 300,
            child: ButtonListWidget(),
          ));
}
