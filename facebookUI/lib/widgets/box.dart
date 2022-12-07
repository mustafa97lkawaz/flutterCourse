import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  

  const Box({
    Key? key,
    
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)),
        height: 200,
        width: 130,
        child: ClipRRect(borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:'https://media.istockphoto.com/id/1353553203/photo/forest-wooden-table-background-summer-sunny-meadow-with-green-grass-forest-trees-background.jpg?b=1&s=170667a&w=0&k=20&c=-jvR1WDwcloLXRgRTGeyG3frvrhPIbegdemeL6vY2Pk='
                    )),
      ),
    );
  }
}
