import 'package:flutter/material.dart';
import 'package:netflix/Pages/SignInPage.dart';
import 'package:netflix/Pages/smartSearch.dart';

import '../myButtons.dart';

class ConfirmAccount extends StatelessWidget {
  const ConfirmAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignIn(),
              ),
            );
          },
        ),
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color.fromARGB(0, 119, 30, 125),
      ),
      backgroundColor: Color.fromARGB(255, 32, 30, 30),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                'Confirm Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'During the specified phonenumber/mail will receive',
                style: TextStyle(color: Color.fromARGB(255, 165, 161, 161)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'a code with confirmation of the account',
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 161, 161),
                ),
              ),
            ],
          ),
          // Row(
          //   children: [
          //     TextFormField(
          //       decoration: InputDecoration(
          //         filled: true,
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 30,
          ),
          NewButton(
            screen: Search(),
            text: 'Confirm',
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Resend code',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Color.fromARGB(255, 165, 161, 161),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 300, 0, 0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'By continuing you agree to the',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'User agreement and',
                      style: TextStyle(
                        color: Colors.indigo[600],
                      ),
                    )
                  ],
                ),
                Text(
                  'the company\'s Privacy policy',
                  style: TextStyle(
                    color: Colors.indigo[600],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
