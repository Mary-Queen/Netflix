import 'package:flutter/material.dart';

import 'home.dart';
import 'profile.dart';
import 'smartSearch.dart';
import 'watchlist.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> pages = [Home(), Search(), WatchList(), Profile()];
  int newselectedIndex = 0;
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
          selectedIndex: newselectedIndex,
          onDestinationSelected: (int Index) {
            setState(() {
              newselectedIndex = Index;
            });
          },
        ),
        backgroundColor: Color.fromARGB(255, 32, 30, 30),
        // Color.fromARGB(255, 32, 30, 30),
        body: IndexedStack(
          index: newselectedIndex,
          children: pages,
        ));
  }
}
