import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Pedro Vitall",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                "Fotografo",
                style: TextStyle(fontSize: 20, color: Colors.black38),
              ),
              Text(
                " florianópolis - SC",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
