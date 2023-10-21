import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculate extends StatelessWidget{
  final double result;
  final bool ismale;
  final int age;
  Calculate({

    required this.result,
    required this.ismale,
    required this.age,
  }
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ismale? "Gender :Male ":"Gender :femle ",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("Results : ${result.round()}",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("age : ${age}",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),
    );

  }

}