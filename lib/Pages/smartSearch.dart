import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix/textForm.dart';

import '../myCards.dart';
import '../myCards.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromARGB(0, 119, 30, 125),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Smart Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Watch List',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      backgroundColor: Color.fromARGB(255, 32, 30, 30),
      // Color.fromARGB(255, 32, 30, 30),
      body: SafeArea(
        child: ListView(
          children: [
            MyForm(
              hint: 'Seach',
              prefix: Icon(
                Icons.search,
                color: Colors.white38,
              ),
              suffix: Icon(
                Icons.mic_rounded,
                color: Colors.white38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'What are you looking for now',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  //CardContainer()
                ],
              ),
            ),
            NewCard(
              cardcolor: Colors.black,
              name: 'Spider man',
              Imagepath: 'ImageSpiderman',
            ),
            NewCard(
              cardcolor: Colors.black,
              name: 'Spider man',
              Imagepath: 'ImageSpiderNews',
            ),
            NewCard(
              cardcolor: Colors.black,
              name: 'Spider man',
              Imagepath: 'ImageGrut',
            ),
          ],
        ),
      ),
    );
  }
}
