import 'package:flutter/material.dart';
import 'package:tela_intagram_app/widgets/home.dart';

class TelaInstagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " pedrovitall",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
