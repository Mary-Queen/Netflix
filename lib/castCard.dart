import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  CastCard({required this.actorName, required this.imagePath});
  String imagePath;
  String actorName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:
              130, // why did it have a padding at the left when i gave it a height?
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
            Radius.circular(5),
          )),
          width: 110,
          child: Image.asset('assets/$imagePath.png'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(actorName,
              style: TextStyle(color: Colors.white, fontSize: 16)),
        )
      ],
    );
  }
}
