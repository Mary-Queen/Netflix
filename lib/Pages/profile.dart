import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       child: Text('Profile Page!!'),
//     ));
//   }
// }

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _HomeState();
}

class _HomeState extends State<Profile> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Center(
      child: Container(
        child: Text(
          'Profile Page!!',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
