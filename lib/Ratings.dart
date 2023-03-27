import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        size: 18,
        Icons.star_border_outlined,
        color: Colors.indigo[600],
      ),
      Icon(
        size: 18,
        Icons.star_border_outlined,
        color: Colors.indigo[600],
      ),
      Icon(
        size: 18,
        Icons.star_border_outlined,
        color: Colors.indigo[600],
      ),
      Icon(
        size: 18,
        Icons.star_border_outlined,
        color: Colors.indigo[600],
      ),
      Icon(
        size: 18,
        Icons.star_border_outlined,
        color: Colors.indigo[600],
      ),
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          '8.7',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[600],
          ),
        ),
      ),
    ]);
  }
}
