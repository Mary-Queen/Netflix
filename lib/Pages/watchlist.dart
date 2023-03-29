import 'package:flutter/material.dart';

// class WatchList extends StatelessWidget {
//   const WatchList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       child: Text('Watch List Page!!'),
//     ));
//   }
// }

class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  State<WatchList> createState() => _HomeState();
}

class _HomeState extends State<WatchList> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Center(
      child: Container(
        child: Text(
          'WatchList Page!!',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
