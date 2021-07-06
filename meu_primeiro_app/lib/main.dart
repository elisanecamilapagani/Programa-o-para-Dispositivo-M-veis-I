import 'package:flutter/material.dart';

void main() => runApp(Cores());

class Cores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cores',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Cores'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Vermelho",
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
