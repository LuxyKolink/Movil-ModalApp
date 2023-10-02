import 'package:flutter/material.dart';
import 'package:modal/bloc/appstate.dart';
import 'package:provider/provider.dart';

import 'package:modal/pages/buttonpage.dart';
import 'package:modal/pages/buttonpage_response.dart';
import 'package:modal/pages/homepage.dart';
import 'package:modal/pages/radiopage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppState(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ModalBottomSheet Lab',
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/radiopage': (context) => const RadioPage(),
            '/buttonpage': (context) => const ButtonPage(),
            '/buttonresponse': (context) => const ButtonPageResponse()
          },
        ));
  }
}
