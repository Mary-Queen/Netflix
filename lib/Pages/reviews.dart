import 'package:flutter/material.dart';
import 'package:netflix/Pages/smartSearch.dart';

import '../user.dart';
import 'spiderman.dart';

class Review extends StatefulWidget {
  Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 11, 1, 12),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Spiderman()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Reviews',
            style: TextStyle(color: Colors.white),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          User(
            imagePath: 'Joe_Manganiello',
            userName: 'Rypar Design',
            textcolor: false,
            time: 'Now',
          ),
          User(
            imagePath: 'JK_Simmons',
            userName: 'David Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            imagePath: 'JK_Simmons',
            userName: 'William Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            imagePath: 'James_Franco',
            userName: 'Richard Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            imagePath: 'JK_Simmons',
            userName: 'Tobias Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            imagePath: 'Joe_Manganiello',
            userName: 'Tobias Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            imagePath: 'kristenDunst',
            userName: 'Thomas Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            imagePath: 'Tobey_Maguire',
            userName: 'Charles Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            imagePath: 'WillemDafoe',
            userName: 'Micheal Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          Divider(
            thickness: 1,
            color: Colors.white38,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter a comment',
                  hintStyle: TextStyle(color: Colors.white38),
                  suffixIcon: Icon(Icons.send_outlined),
                  suffixIconColor: Colors.indigo[600]),
            ),
          )
        ],
      ),
    );
  }
}
