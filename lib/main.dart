import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Screens/Home/homepage.dart';

import 'Screens/Chats/chatpage.dart';
import 'Screens/Login/loginscreen.dart';
import 'Screens/Post/postscreen.dart';
import 'Screens/Search/searchpage.dart';
import 'Screens/Signup/signupscreen.dart';
import 'Screens/Splash/splashscreen.dart';
import 'Screens/like/likepage.dart';
import 'Screens/profile/profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,//remove debug banner
      title: 'Instagram',
      theme: ThemeData.dark(),
      home: SplashScreen ()

    );
  }
}


