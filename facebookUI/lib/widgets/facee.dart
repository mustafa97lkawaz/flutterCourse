import 'package:fface/widgets/post.dart';
import 'package:fface/widgets/reels.dart';
import 'package:flutter/material.dart';

import 'circle.dart';

class face extends StatelessWidget {
  const face({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: Color.fromARGB(255, 255, 255, 255),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                circle(
                  long: 50,
                  title: '',
                ),
                circle(
                  long: 250,
                  title: "What's on your mind?",
                ),
                Icon(
                  Icons.image,
                  color: Color.fromARGB(255, 14, 211, 67),
                  size: 30,
                )
              ],
            ),
          ),
                    Container(
            width: double.infinity,
            height: 10,
            color: Color.fromARGB(255, 169, 168, 167),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                reel(),
                reel(),
                reel(),
                reel(),
                reel(),
                reel(),
              ],
            ),
          ),
          
          Container(
            width: double.infinity,
            height: 10,
            color: Color.fromARGB(255, 169, 168, 167),
          ),
          for (var i = 0; i < 10; i++)
          post(color: Color.fromARGB(255, 26, 202, 10),),
          for (var i = 0; i < 10; i++)
          post(color: Colors.red,),
          for (var i = 0; i < 10; i++)
          post(color: Color.fromARGB(255, 54, 197, 244),),
          for (var i = 0; i < 10; i++)
          post(color: Color.fromARGB(255, 197, 54, 244),),
        ],
      )),
    );
  }
}

