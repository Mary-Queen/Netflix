import 'package:flutter/material.dart';
import 'package:netflix/socials.dart';
import 'package:netflix/textForm.dart';

import '../myButtons.dart';
import 'Confirm.dart';
import 'SignInPage.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color.fromARGB(0, 119, 30, 125),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.indigo[600],
                ),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 32, 30, 30),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MyForm(
              hint: 'Email or phone',
            ),
            MyForm(
              hint: 'Password',
              suffix: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.white38,
              ),
            ),

            NewButton(
              screen: SignIn(),
              text: 'Registration',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: Text('Sign in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 8),
              child: Text(
                'Sign in with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.indigo[600],
                ),
              ),
            ),
            Social(logo: 'apple', text: 'Continue with Apple'),
            Social(logo: 'facebook', text: 'Continue with Facebook'),
            Social(logo: 'google', text: 'Continue with Google'),
            // SizedBox(
            //   height: 50,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 60, 0, 0),
              child: Column(
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
      ),
    );
  }
}
