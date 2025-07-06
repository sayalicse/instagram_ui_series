import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Screens/Login/loginscreen.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen>createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));//when user go to login screen and push back button then it goes to directly outside the app not to splash screen
    });
  }// initialize state or perform setup tasks
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "instagram.png"),
              SizedBox(
                height: 10,
              ),
              UiHelper.CustomImage(imgurl: "logo.png")
            ],
          ),
        )
    );
  }
}
