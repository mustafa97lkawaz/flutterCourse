import 'package:cached_network_image/cached_network_image.dart';
import 'package:fface/widgets/circle.dart';
import 'package:flutter/material.dart';

import 'boton.dart';

class post extends StatelessWidget {
  final Color color;
  const post({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, 252, 252, 252),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromARGB(255, 169, 168, 167),
            //shape: BoxShape.circle
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(25),
            child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
          ),
          ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('facebook title '),
                        Text('. Follow ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 51, 112, 233),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Oct 7',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: 15,
                        )
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(137, 0, 0, 0),
                  size: 30,
                ),
                Icon(
                  Icons.remove_circle_outline_outlined,
                  color: Color.fromARGB(137, 0, 0, 0),
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'One of the biggest mysteries of the Great Barrier Reef are blue holes that can give researchers a rare look at ocean life and how we can protect it. Dive in to see how researchers are using @GoogleMaps to locate and learn from these sinkholes😂 ',
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
           // height: 470,
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    'https://cdn.mos.cms.futurecdn.net/V6LCHNxfSPT2Sxpr4bAzD.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('❤ comedy and 8.3k others',
                    style: TextStyle(
                      color: Color.fromARGB(255, 131, 131, 132),
                    )),
                Text('43 comments',
                    style: TextStyle(
                      color: Color.fromARGB(255, 131, 131, 132),
                    )),
                Text('1.2k shares',
                    style: TextStyle(
                      color: Color.fromARGB(255, 131, 131, 132),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              height: 0.7,
              color: Color.fromARGB(255, 169, 168, 167),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bottoon(
                  ic: Icon(
                    Icons.thumb_up_sharp,
                    color: Color.fromARGB(137, 65, 65, 65),
                  ),
                  title: 'like',
                ),
                bottoon(
                  ic: Icon(
                    Icons.message,
                    color: Color.fromARGB(137, 65, 65, 65),
                  ),
                  title: 'comment',
                ),
                bottoon(
                  ic: Icon(
                    Icons.share,
                    color: Color.fromARGB(137, 65, 65, 65),
                  ),
                  title: 'share',
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 10,
            color: Color.fromARGB(255, 169, 168, 167),
          ),
        ],
      ),
    );
  }
}
