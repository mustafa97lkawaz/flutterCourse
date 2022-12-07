import 'package:flutter/material.dart';

class bottoon extends StatelessWidget {
  final Icon ic;
  final String title;
  const bottoon({
    Key? key,required this.ic,required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [ic,SizedBox(width: 15,),Text(title)],);
  }
}