import 'package:fface/widgets/box.dart';
import 'package:fface/widgets/circle.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/facee.dart';
import '../widgets/glass_box.dart';
import '../widgets/video.dart';

class House extends StatefulWidget {
  const House({super.key});

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> with SingleTickerProviderStateMixin {
  late TabController crl;
  @override
  void initState() {
    // TODO: implement initState
    crl = TabController(length: 5, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: GlassBox(
        child: BottomNavigationBar(backgroundColor: Color.fromARGB(0, 182, 182, 192),      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,items: [
          BottomNavigationBarItem(
             //backgroundColor: Color.fromARGB(255, 65, 10, 204),
              icon:Icon(Icons.home),
              label: 'home',
              ),
              BottomNavigationBarItem(
             //backgroundColor: Color.fromARGB(255, 255, 191, 0),
              icon:Icon(Icons.settings),
              label: 'home',
              ),
                 BottomNavigationBarItem(
             //backgroundColor: Color.fromARGB(255, 255, 191, 0),
              icon:Icon(Icons.more),
              label: 'home',
              ),
          
        ]),
      ),
      appBar: AppBar(
          excludeHeaderSemantics: true,
          primary: true,
          elevation: 1,
          title: Text(
            'facebook',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 7, 97, 241),
            ),
          ),
          actions: [
            circle(long: 50, title: ''),
            circle(long: 50, title: ''),
            circle(long: 50, title: '')
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: crl,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.video_call_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.storefront_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notification_add_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
            ],
          )),
      body: TabBarView(
          controller: crl, children: [face(), video(), face(), face(), face()]),
    );
  }
}
