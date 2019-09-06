import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          alignment: Alignment.center,
          // margin: EdgeInsets.only(left: 35.0, top: 50),
          color: Colors.cyan,
          child: Text("YaMan",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 75
            ),
            )
      ),
    );
  }
}