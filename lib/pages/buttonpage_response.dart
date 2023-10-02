import 'package:flutter/material.dart';
import 'package:modal/bloc/appstate.dart';
import 'package:provider/provider.dart';

import 'package:modal/widgets/text.dart';

class ButtonPageResponse extends StatelessWidget {
  const ButtonPageResponse({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Radio'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: CustomText(text: 'Opción Seleccionada:'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomText(
                  text: appState.currentButtonVal,
                  isBold: true,
                ),
              ),
            ],
          ),
        ));
  }
}
