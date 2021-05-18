import 'package:flutter/material.dart';
import 'package:tela_intagram_app/widgets/bio.dart';
import 'package:tela_intagram_app/widgets/botoes.dart';
import 'package:tela_intagram_app/widgets/feed.dart';
import 'package:tela_intagram_app/widgets/perfil.dart';
import 'package:tela_intagram_app/widgets/thumbs.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get padding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'pedrovitaal',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Perfil(),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Bio(),
              Padding(
                padding: EdgeInsets.all(7),
              ),
              Thumbs(),
              Botoes(),
              Feed(),
            ],
          ),
        ],
      ),
    );
  }
}
