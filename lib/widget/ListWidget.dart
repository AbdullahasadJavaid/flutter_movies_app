import 'package:flutter/material.dart';

import '../screens/detailScreen.dart';

class MyListWidget extends StatelessWidget {
  final String id;
  final String imageurl;
  final String name;
  final double rating;
  final String dec;
  const MyListWidget(
      {required this.id,
      required this.imageurl,
      required this.name,
      required this.rating,
      required this.dec});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            DetialScreen.routeName,
            arguments: id,
          );
        },
        child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF044D60),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Container(
                    height: 150,
                    width: 250,
                    child: Image.network(
                      imageurl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  name,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      rating.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
