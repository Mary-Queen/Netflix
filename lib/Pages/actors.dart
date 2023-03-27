import 'package:flutter/material.dart';

import 'spiderman.dart';

class Actors extends StatelessWidget {
  const Actors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
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
              'Actors',
              style: TextStyle(color: Colors.white),
            ),
          ),
          elevation: 0,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color.fromARGB(0, 11, 1, 12),
        body: Stack(children: [
          Image.asset(
            'assets/ImageSpiderman.png',
            //height: 400,
          ),
          GridView(
            // padding: EdgeInsets.symmetric(vertical: 80, horizontal: 0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
            ),
            children: [
              Image.asset('assets/Tobey_Maguire.png'),
              Image.asset('assets/kristenDunst.png'),
              Image.asset('assets/WillemDafoe.png'),
              Image.asset('assets/James_Franco.png'),
              Image.asset('assets/JK_Simmons.png'),
              Image.asset('assets/Joe_Manganiello.png'),
            ],
          ),
        ]));
  }
}
