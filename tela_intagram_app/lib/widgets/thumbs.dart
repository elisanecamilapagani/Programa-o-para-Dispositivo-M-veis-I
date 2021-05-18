import 'package:flutter/material.dart';

class Thumbs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 6),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/pod.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "IPodcasts",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 35,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 34,
                      backgroundImage: AssetImage("images/igtv.png")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "IGTV",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
