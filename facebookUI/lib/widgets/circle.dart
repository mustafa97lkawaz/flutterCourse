import 'package:flutter/material.dart';

class circle extends StatelessWidget {
  final double long;
  final String title;
  //create list of icon

  const circle({Key? key, required this.long, required this.title})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 50,
          width: long,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromARGB(255, 169, 168, 167),
            //shape: BoxShape.circle
          ),
          child: Center(child: Text(title))),
    );
  }
}
