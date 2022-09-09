import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/page/home.dart';
import 'package:prueba/provider/characters_notifier.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CharacterNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CharactersH(),

    );
  }
}