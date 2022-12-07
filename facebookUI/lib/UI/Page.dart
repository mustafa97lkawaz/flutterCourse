
import 'package:flutter/material.dart';
class Page extends StatelessWidget {
  const Page({
    Key? key,
  }) : super(key:  key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: Color.fromARGB(255, 103, 71, 71),
      child: SingleChildScrollView(child: Column(children: [
        Row(children: [Container(width: 70,height: 100,color: Color.fromARGB(255, 245, 158, 66),)],)
       
        
      ],)),
    );
  }
}