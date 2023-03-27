import 'package:flutter/material.dart';

import 'Pages/Confirm.dart';
import 'Pages/SignInPage.dart';
import 'Pages/SignupPage.dart';
import 'Pages/actors.dart';
import 'Pages/dashBoard.dart';
import 'Pages/reviews.dart';
import 'Pages/smartSearch.dart';
import 'Pages/spiderman.dart';
import 'Stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: SignIn(),
      ),
    );
  }
}
