import 'package:fface/UI/House.dart';
import 'package:flutter/material.dart';


import 'UI/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: House(),
    );
  }
}
