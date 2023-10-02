import 'package:flutter/material.dart';
import 'package:modal/bloc/appstate.dart';
import 'package:modal/constants.dart';
import 'package:provider/provider.dart';

import 'package:modal/widgets/button.dart';

class ButtonListWidget extends StatelessWidget {
  const ButtonListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Button(
            onPressed: () {
              appState.setCurrentButtonVal('Lila');
              Navigator.pushNamed(context, '/buttonresponse');
            },
            text: 'Lila',
            color: AppColors.purple,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Button(
            onPressed: () {
              appState.setCurrentButtonVal('Rojo');
              Navigator.pushNamed(context, '/buttonresponse');
            },
            text: 'Rojo',
            color: AppColors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Button(
            onPressed: () {
              appState.setCurrentButtonVal('Naranja');
              Navigator.pushNamed(context, '/buttonresponse');
            },
            text: 'Naranja',
            color: AppColors.orange,
          ),
        ),
      ],
    );
  }
}
