import 'package:flutter/material.dart';

class UiHelper{
  static CustomTextButton({required String text,required VoidCallback callback}){
    return TextButton(
        onPressed: (){
          callback();
        },
        child: Text(
          text,
          style: TextStyle(
              fontSize: 12
             ,color: Colors.blue),));
  }


static CustomButton({required VoidCallback callback,required String buttonname}){
    return SizedBox(
      height: 44,
      width: 343,
      child: ElevatedButton(onPressed: (){
        callback();
      }, child:Center(
        child:Text(buttonname,style: TextStyle(
            fontSize: 14,
            color: Colors.white
        ),)), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ))
      )
    );
}











  static CustomTextField({required TextEditingController controller,required String text,required bool tohide}){

    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(5)
      ),
      child:  Padding(padding: const EdgeInsets.only(left: 15),
      child:TextField(
        controller: controller,
        obscureText: tohide,
        //to enter rlated to input that user want to enter
        decoration:InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white
            ),
            border: InputBorder.none
        ) ,

      ) ,
      )


    );




  }
  static CustomImage({required String imgurl}){
    return Image.asset("assets/images/$imgurl");
  }
}