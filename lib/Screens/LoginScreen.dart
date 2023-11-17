import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body:Column(
        children:[
          Container(
            decoration:BoxDecoration(
              image:DecorationImage(
             image:AssetImage("assets/images/whitflow.jpeg"),
             fit:BoxFit.cover,

              )

            )
          )
        ]
      )
    );
  }
}
