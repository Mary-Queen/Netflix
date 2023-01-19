import 'package:flutter/material.dart';
import 'package:netflix/socials.dart';
import 'package:netflix/textForm.dart';

import '../myButtons.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color.fromARGB(0, 119, 30, 125),
        actions: [
          Text(
            'skip',
            style: TextStyle(
              color: Colors.indigo[600],
            ),
            textAlign: TextAlign.end,
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
                  'Sign in',
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
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
              child: Text(
                'Forgot password?',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 11.0,
                ),
              ),
            ),
            NewButton(
              text: 'Login',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('If you dont have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 15,
                ),
                Text('Sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
              padding: const EdgeInsets.fromLTRB(18, 30, 0, 0),
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
