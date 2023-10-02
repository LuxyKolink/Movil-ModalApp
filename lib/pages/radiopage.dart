import 'package:flutter/material.dart';
import 'package:modal/bloc/appstate.dart';
import 'package:provider/provider.dart';

import 'package:modal/widgets/text.dart';
import 'package:modal/widgets/button.dart';
import 'package:modal/widgets/radiolist_widget.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
      ),
      body: const RadioPageContent(),
    );
  }
}

class RadioPageContent extends StatelessWidget {
  const RadioPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    if (appState.currentTileVal.isEmpty) {
      return Center(
        child: Button(
          onPressed: () {
            _displayBottomSheet(context);
          },
          text: 'Mostrar Opciones',
        ),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Button(
              onPressed: () {
                _displayBottomSheet(context);
              },
              text: 'Mostrar Opciones',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: CustomText(text: 'Opción Seleccionada:'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomText(text: appState.currentTileVal, isBold: true),
          ),
        ],
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (context) => const SizedBox(
            height: 300,
            child: RadioListWidget(),
          ));
}
