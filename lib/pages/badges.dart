import 'package:flutter/material.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text("Em construção!",
            style: TextStyle(
              color: Colors.black45
            ),)
        ]
        )
      );
  }
}
