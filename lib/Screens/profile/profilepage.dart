import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: Icon(Icons.lock,size: 20,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('sayali_patil_2003',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            SizedBox(width: 8,),
            Icon(Icons.keyboard_arrow_down_outlined)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset('assets/images/createicon.png',width: 30,height: 30,color: Colors.white,),iconSize: 30,),
          IconButton(onPressed: (){}, icon: Icon(Icons.toc,color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // Circle Avatar
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHlrT9mV0pvMTa8X33POtsMd2pgzZGAPJCA&s",
                    ),
                    radius: 30,
                  ),

                  // "What's New" label above the avatar
                  Positioned(
                    top: -25,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 35,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF4E545C),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "What's New",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Plus icon at bottom-right
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text('0',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Text('posts',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.normal),),
                  )
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text('77',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),

                  Text('followers',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.normal),)
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text('79',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),

                  Text('following',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.normal),)
                ],
              )

            ],
          ),
          SizedBox(height: 18,),
          Row(

            children: [
             SizedBox(width: 10,),
              Container(
                height: 28,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFF4E545C),
                  borderRadius: BorderRadius.circular(5)
                ),
               
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(child: Text('Edit profile')),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 28,
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xFF4E545C),
                    borderRadius: BorderRadius.circular(5)
                ),

                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(child: Text('Share profile')),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 28,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0xFF4E545C),
                    borderRadius: BorderRadius.circular(5)
                ),

                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(child:
                  Image.network('data:image/png;base64,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',height: 20,width: 20,),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

  }

}