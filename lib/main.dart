import 'package:firebase_core/firebase_core.dart';
import 'package:firebasenotes/screens/HomePage.dart';
import 'package:firebasenotes/screens/SingUpScreen.dart';
import 'package:firebasenotes/screens/SplashScreen.dart';
import 'package:firebasenotes/screens/loginpage.dart';
import 'package:firebasenotes/screens/notifction_firebase.dart';
import 'package:firebasenotes/screens/singinScreen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      routes: {
    '/' : (context) => Splash_Screen(),
    'loginpage': (context) => const loginPage(),
    'notifction': (context) => const notifctionPage(),
    //'SpalceScreen': (context) =>const  SpalceScreen(),
    'SinginScreen': (context) => const SinginScreen(),
        'home' : (context) => Homepage(),
    'SingUpScreen': (context) => const SingUpScreen(),
  }));
}
