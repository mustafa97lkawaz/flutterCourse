

import 'package:fface/widgets/facee.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> with SingleTickerProviderStateMixin {
  late TabController bar2;
  @override
  void initState() {
    // TODO: implement initState
    bar2 = TabController(length: 6, vsync: this);
    super.initState();
  }
  Widget build(BuildContext context) {
    return 

 Scaffold( 
  appBar: AppBar(elevation: 1,
    title: Text('Watch',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0),),),
   
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    
    bottom: TabBar(isScrollable: true,controller: bar2,tabs: [
     Text('For you',style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
      Text('Following',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
       Text('Live',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),  
       Text('Gaming',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),), 
       Text('Saved',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),), 
       Text('Trend',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),), 
              
    ]),

  ),
      body: TabBarView(controller: bar2, children: [
        face(),
        face(),
        face(),
         face(),
        face(),
        face(),
        

  
        
      ]),
  );
  
  }
}
