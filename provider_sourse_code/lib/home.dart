import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/repo/CourseProvider.dart';

import 'models/Student.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Courseprovder? courseprovder;
  @override
  void didChangeDependencies() {
    courseprovder = Provider.of<Courseprovder>(context, listen: true);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  // image: DecorationImage(image: NetworkImage("http://betk.gs-server1.com/storage/images/articles/FkyrlQTrVGBUiqw4RHgcDn5HXwSFsEjo6SAHW0DU.png"),)
                  ),
            ),
            for (PostModel postModel in courseprovder!.posts)
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          postModel.id.toString(),
                          style: TextStyle(
                              color: Color.fromARGB(255, 214, 9, 9),
                              fontSize: 30),
                        ),
                        Text(postModel.userId.toString()),
                        Center(child: Text(postModel.title!)),
                        SizedBox(height: 10,),
                        Container(
                          width: 400,
                            height: 170,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(child: Text(postModel.body!))),

                      ],
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 300,
            ),
            InkWell(
                onTap: (() {
                  courseprovder!.changecolor();
                }),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: 200,
                  height: courseprovder!.height,
                  color: courseprovder!.mycolor,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'You have pushed the button this many times:',
                ),
              ),
            ),
            Text(
              courseprovder!.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          courseprovder!.httpgetdata();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}
