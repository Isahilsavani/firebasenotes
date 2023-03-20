import 'dart:async';

import 'package:firebasenotes/screens/singinScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomePage.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SinginScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Image(
                image: AssetImage('asserts/image/blue notes.png'),
              ),
            ),
          ),
          Text("Note App",style: GoogleFonts.poppins(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            color: CupertinoColors.white,
          ),)
        ],
      ),
      backgroundColor: CupertinoColors.black,
    );
  }
}
