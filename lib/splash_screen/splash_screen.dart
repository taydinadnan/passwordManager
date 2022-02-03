import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // startTimer() {
  //   Timer(
  //     const Duration(seconds: 4),
  //     () async {
  //       // if the user is already authenticate send user to home screen
  //       if (firebaseAuth.currentUser != null) {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (c) => HomeScreen(),
  //           ),
  //         );
  //       }
  //       //if not send to auth screen
  //       else {
  //         Navigator.push(
  //             context, MaterialPageRoute(builder: (c) => const AuthScreen()));
  //       }
  //     },
  //   );
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(2.0, 0.0),
            colors: [
              Color(0xFF004B8D),
              Color(0xFFffffff),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 280, child: Image.asset('images/welcome.png')),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Order Food Online\n with \n iFood',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Acme",
                    letterSpacing: 3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
