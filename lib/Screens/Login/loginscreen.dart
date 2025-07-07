import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Screens/bottomnavigate/bottomnav.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

import '../Signup/signupscreen.dart';

class LoginScreen extends StatelessWidget{
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: 'logo.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextField(controller: emailcontroller, text: 'Email', tohide: false),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextField(controller:passwordcontroller,text: 'Password',tohide: false),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.only(right: 20),
                child:UiHelper.CustomTextButton(text: 'Forgot password?', callback: (){

                }) ,
                ),



              ],
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomButton(callback: (){
Navigator.push(context,MaterialPageRoute(builder:(context)=>BottomNavScreen()));
            }, buttonname:'Log In'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.CustomImage(imgurl: 'facebook.png'),
                SizedBox(width: 8),
               UiHelper.CustomTextButton(text: 'Log in with Facebook', callback: (){

               })
               ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgurl: 'google.png'),
                SizedBox(width: 8),
                UiHelper.CustomTextButton(text: 'Log in with Google', callback: (){})
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("OR",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(fontSize: 14,color: Colors.white),),
                UiHelper.CustomTextButton(text: 'Sign Up', callback: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}