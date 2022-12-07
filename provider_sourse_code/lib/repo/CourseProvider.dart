



import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
  import 'package:http/http.dart' as http;
import 'package:state/models/Student.dart';
// اسم البروفايدر مع اكستند  جينج نوتيفاير
class Courseprovder extends ChangeNotifier{

List<PostModel>  posts = [];
int counter = 0;
double height = 200;
Color mycolor = Colors.black;
incremntcounter(){
  counter++;
  print(counter.toString());
  notifyListeners();
}

changecolor(){
  mycolor = Colors.green;
  height = 250;
  notifyListeners();
  Timer(Duration(seconds: 3), (){
  mycolor = Colors.black;
  height = 200;
  notifyListeners();
  });

}
httpgetdata() async {
 
  var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
List res = jsonDecode(response.body);
for (var i =0;i<res.length;i++){
  posts.add(PostModel.fromJson(res[i]));
}
notifyListeners();






}

}