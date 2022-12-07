// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../widgets/box.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Color.fromARGB(255, 33, 110, 243),),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Qatar 2022',
                    style: TextStyle(
                        color: Color.fromARGB(255, 151, 2, 2),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Lottie.network(
                        'https://assets6.lottiefiles.com/packages/lf20_0LAKyhkZmc.json'),
                    width: 70,
                    height: 70,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(0, 0, 0, 0)),
                  ),
                  Container(
                    child: Icon(
                      Icons.photo_album,
                      color: Color.fromARGB(255, 88, 240, 83),
                    ),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(0, 225, 226, 228)),
                  ),
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 70,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
         
    
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
              Container(
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR69PLMT1a-rQKDwJzTY_Evzb5XHSum8I1KW4LiJGH-4Wg-FuCdP6MmdUBEPL_47iJwVyw&usqp=CAU",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                width: MediaQuery.of(context).size.width,
                height: 250,
                color: Color.fromARGB(255, 216, 108, 20),
              ),
              Positioned(
                bottom: 20,
                left: 30,
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          "https://storage.googleapis.com/accesswire/logos/subaccounts/square/3747.jpg?v=0",
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color.fromARGB(255, 19, 191, 37),
                      shape: BoxShape.circle),
                ),
              ),
              Positioned(
                  right: 10,
                  bottom: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(
                          Icons.chat,
                          color: Colors.white,
                        ),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 7, 93, 198)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Icon(
                          Icons.camera_alt,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 184, 185, 187)),
                      )
                    ],
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Genius Solution',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 110, 243),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mic_external_on,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Create Ads',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 225, 224, 222),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_box,
                        color: Colors.black,
                      ),
                      Text('Add to story')
                    ],
                  ),
                ),
              ),
              Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 225, 224, 222),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.manage_accounts,
                        color: Colors.black,
                      ),
                      Text('Manage')
                    ],
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 225, 224, 222),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 12,
              color: Color.fromARGB(255, 177, 176, 176),
            ),
          ),
          Container(
            width: 500,
            height: 500,
          )
        ],
      )),
    );
  }
}
