

import 'package:flutter/material.dart';

class banner extends StatelessWidget {
  final String title;
  final Color colors;
  
  const banner({
    Key? key, required this.title, required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: colors
        ),
        child: Center(child: Text(title,style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}