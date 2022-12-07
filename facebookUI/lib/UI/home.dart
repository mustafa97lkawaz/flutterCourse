// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_animator/flutter_animator.dart';

import '../screens/home.dart';
import '../screens/tab3.dart';
import '../widgets/banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController ctrl;

  @override
  void initState() {
    ctrl = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        //drawer: Drawer(),
        //appBar: AppBar(bottom: ),
        appBar: AppBar(
            elevation: 0,
            actions: [
              
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              SizedBox(width: 10,),
              Icon(
                Icons.message,
                color: Colors.black,
              ),
              SizedBox(width: 10,),
            ],
            title: Text(
              'Facebook',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            backgroundColor: Color.fromARGB(255, 253, 253, 254),
            bottom: TabBar(
                controller: ctrl,
                indicatorColor: Color.fromARGB(255, 20, 118, 222),
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.shop, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.info, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.list, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.person, color: Colors.black),
                  ),
                ])),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: ctrl,
          children: [
            Tab1(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 500,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Tab3(),
            Tab1(),
            Tab1(),
          ],
        ));
  }
}

class Doctor extends StatelessWidget {
  final String name;
  final bool hasanimation;
  const Doctor({
    Key? key,
    required this.name,
    required this.hasanimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Stack(children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: hasanimation == true
                ? FadeInDown(
                    preferences:
                        AnimationPreferences(duration: Duration(seconds: 2)),
                    child: Container(
                      width: 100,
                      height: 200,
                      child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl:
                              'https://static.vecteezy.com/system/resources/thumbnails/012/001/835/small/3d-character-male-doctor-illustration-png.png'),
                    ),
                  )
                : Container(
                    width: 100,
                    height: 200,
                    child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl:
                            'https://static.vecteezy.com/system/resources/thumbnails/012/001/835/small/3d-character-male-doctor-illustration-png.png'),
                  ),
          ),
          Positioned(
            top: 120,
            right: 10,
            child: hasanimation == true
                ? FadeInLeft(
                    child: Container(
                        width: 100,
                        height: 200,
                        child: Column(
                          children: [
                            Text(
                              name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        )),
                  )
                : Container(
                    width: 100,
                    height: 200,
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    )),
          ),
        ]),
      ),
    );
  }
}

class Book extends StatelessWidget {
  final String title;
  final String imgurl;
  final Color color;
  const Book({
    Key? key,
    required this.title,
    required this.imgurl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Container(
                width: (MediaQuery.of(context).size.width / 2) - 12,
                height: 300,
                color: color,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "intermidate",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.safety_check,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            title,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width / 2) - 12,
                height: 300,
                child: CachedNetworkImage(fit: BoxFit.fill, imageUrl: imgurl),
              ),
            ],
          ),
        ));
  }
}
