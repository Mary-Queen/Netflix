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
  static const pages = <Widget>[
    Home(),
    KeepAlive(keepAlive: true, child: Search()),
    KeepAlive(keepAlive: true, child: WatchList()),
    KeepAlive(keepAlive: true, child: Profile()),
  ];
  // int newselectedIndex = 0;
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: Theme.of(context).navigationBarTheme.copyWith(
              indicatorColor: Colors.red,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              labelTextStyle: MaterialStateProperty.resolveWith(
                (state) {
                  if (state.contains(MaterialState.selected)) {
                    return const TextStyle(color: Colors.white);
                  }
                  return const TextStyle(color: Colors.white38);
                },
              ),
            ),
        child: NavigationBar(
          backgroundColor: const Color.fromARGB(0, 119, 30, 125),
          destinations: const [
            NavigationDestination(
              // this is used for both selected & unselected
              icon: Icon(Icons.home, color: Colors.white38),
              selectedIcon: Icon(Icons.home, color: Colors.white),
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
      ),
      // colors: Colors.white38,
      backgroundColor: const Color.fromARGB(255, 32, 30, 30),
      // Color.fromARGB(255, 32, 30, 30),
      body: IndexedStack(
        index: currentPageIndex,
        children: pages,
      ),
    );
  }
}
