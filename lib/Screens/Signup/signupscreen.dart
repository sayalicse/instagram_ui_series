import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Screens/Login/loginscreen.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class SignUpScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller=TextEditingController();
    TextEditingController passwordcontroller=TextEditingController();
    TextEditingController usernamecontroller=TextEditingController();
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            UiHelper.CustomImage(imgurl: 'logo.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextField(
                controller: emailcontroller,
                text: 'Email',
                tohide: false
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextField(
                controller: passwordcontroller,
                text: 'Password',
                tohide: false
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextField(
                controller: usernamecontroller,
                text: 'Username',
                tohide: false,

            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomButton(
                callback: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                buttonname: 'Sign Up'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account?',
                  style: TextStyle(
                  fontSize: 14,
                  color: Colors.white
                ),),
                UiHelper.CustomTextButton(
                    text: 'Log In',
                    callback: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen()));

                })
              ],
            )

          ],
        )
      ),


    );
  }
}