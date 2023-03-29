import 'package:flutter/material.dart';

class User extends StatelessWidget {
  User(
      {required this.time,
      required this.textcolor,
      required this.userName,
      required this.imagePath});
  String time = '5 hours ago';
  bool textcolor = true;
  String userName;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          child: Image.asset(
        'assets/$imagePath.png',
        fit: BoxFit.cover,
      )),
      title: Row(
        children: [
          Text(
            userName,
            style: TextStyle(
              color: textcolor ? Colors.white38 : Colors.indigo[600],
            ),
          ),
          Spacer(),
          Text(
            time,
            style: TextStyle(
              color: textcolor ? Colors.white38 : Colors.indigo[600],
            ),
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Text(
              'Superhuman strength, agility, endurance, ability to stick to and climb walls and other surfaces',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
