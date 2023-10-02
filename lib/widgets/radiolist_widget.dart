import 'package:flutter/material.dart';
import 'package:modal/bloc/appstate.dart';
import 'package:provider/provider.dart';

import 'package:modal/widgets/button.dart';

class RadioListWidget extends StatefulWidget {
  const RadioListWidget({super.key});

  @override
  State<RadioListWidget> createState() => _RadioListWidgetState();
}

List<String> options = ["Amarillo", "Azul", "Rojo", "Verde", "Naranja"];

class _RadioListWidgetState extends State<RadioListWidget> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RadioListTile(
          title: const Text('Amarillo'),
          value: options[0],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
              appState.setCurrentTileVal(currentOption);
              // print('Nuevo valor establecido: ${appState.currentTileVal}');
            });
          },
        ),
        RadioListTile(
          title: const Text('Azul'),
          value: options[1],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
              appState.setCurrentTileVal(currentOption);
              // print('Nuevo valor establecido: ${appState.currentTileVal}');
            });
          },
        ),
        RadioListTile(
          title: const Text('Rojo'),
          value: options[2],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
              appState.setCurrentTileVal(currentOption);
              // print('Nuevo valor establecido: ${appState.currentTileVal}');
            });
          },
        ),
        RadioListTile(
          title: const Text('Verde'),
          value: options[3],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
              appState.setCurrentTileVal(currentOption);
              // print('Nuevo valor establecido: ${appState.currentTileVal}');
            });
          },
        ),
        RadioListTile(
          title: const Text('Naranja'),
          value: options[4],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
              appState.setCurrentTileVal(currentOption);
              // print('Nuevo valor establecido: ${appState.currentTileVal}');
            });
          },
        ),
        Button(
          text: 'Aceptar',
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}

enum ColorCharacter { amarillo, azul, rojo, verde, naranja }

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  ColorCharacter? _character = ColorCharacter.amarillo;

  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<AppState>();

    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Amarillo'),
          leading: Radio<ColorCharacter>(
            value: ColorCharacter.amarillo,
            groupValue: _character,
            onChanged: (ColorCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Azul'),
          leading: Radio<ColorCharacter>(
            value: ColorCharacter.azul,
            groupValue: _character,
            onChanged: (ColorCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Rojo'),
          leading: Radio<ColorCharacter>(
            value: ColorCharacter.rojo,
            groupValue: _character,
            onChanged: (ColorCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Verde'),
          leading: Radio<ColorCharacter>(
            value: ColorCharacter.verde,
            groupValue: _character,
            onChanged: (ColorCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Naranja'),
          leading: Radio<ColorCharacter>(
            value: ColorCharacter.naranja,
            groupValue: _character,
            onChanged: (ColorCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Button(
          text: 'Aceptar',
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
