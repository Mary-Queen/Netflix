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
            userName: 'Rypar Design',
            textcolor: false,
            time: 'Now',
          ),
          User(
            userName: 'David Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'William Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'Richard Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'Tobias Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'Tobias Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'Thomas Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
            userName: 'Charles Maguire',
            textcolor: true,
            time: '5 hours ago',
          ),
          User(
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
