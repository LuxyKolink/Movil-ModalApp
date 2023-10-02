import 'package:flutter/material.dart';
import 'package:modal/widgets/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laboratorio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button(
                text: 'Radio',
                onPressed: () {
                  Navigator.pushNamed(context, '/radiopage');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button(
                text: 'Button',
                onPressed: () {
                  Navigator.pushNamed(context, '/buttonpage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
