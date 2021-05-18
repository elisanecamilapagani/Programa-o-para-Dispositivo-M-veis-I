import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.all(4),
          ),
          Image.asset(
            'images/2.png',
            height: 150,
            width: 140,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: Column(
              children: [
                Text(
                  '3,405',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'post',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: Column(
              children: [
                Text(
                  '61,7 K',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'followers',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  '3,405',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'following',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
