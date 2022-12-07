import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class reel extends StatelessWidget {
  const reel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: ClipRRect(borderRadius: BorderRadius.circular(25),
            child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      'https://d3jmn01ri1fzgl.cloudfront.net/photoadking/webp_thumbnail/5c8c80db18554_template_image_1552711899.webp'),
          ),
        width: 130,
       // height: 220,
        decoration: BoxDecoration(
        color: Color.fromARGB(255, 169, 168, 167),
        borderRadius: BorderRadius.circular(20)
        )
      ),
    );
  }
}