import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  Social({required this.logo, required this.text});
  String logo;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromARGB(255, 53, 60, 83),
      ),
      //   //color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/$logo.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 70,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
