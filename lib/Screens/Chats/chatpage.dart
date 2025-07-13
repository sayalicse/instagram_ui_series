import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class Chatpage extends StatelessWidget{
  TextEditingController searchcontroller=TextEditingController();
  var arrContent=[
    {
      "img":"myimg.png",
      "name":"sayali patil",
      "last message":"hello"
    },
    {
      "img":"myimg.png",
      "name":"manali Thorat",
      "last message":"hello good evening❤️"
    },
    {
      "img":"myimg.png",
      "name":"jyotsana patil",
      "last message":"Hello! I'm great 😊"
    },
    {
      "img":"myimg.png",
      "name":"mansi sawant",
      "last message":"hello i am fine what about you ❤️❤️"
    },
    {
      "img":"myimg.png",
      "name":"sayali patil",
      "last message":"hello"
    },
    {
      "img":"myimg.png",
      "name":"manali Thorat",
      "last message":"hello good evening"
    },
    {
      "img":"myimg.png",
      "name":"jyotsana patil",
      "last message":"hello how are you❤️❤️"
    },
    {
      "img":"myimg.png",
      "name":"mansi sawant",
      "last message":"hello i am fine what about you"
    },
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.back)),
        title: Text('Sayali Patil',
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.add,color: Colors.white,size: 20,))
        ],
      ),
      body: Column(
        children: [

          Row(

            children: [
              SizedBox(width: 30,),
              Container(
                height: 36,
                width: 347,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: searchcontroller,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(CupertinoIcons.search)
                    ),
                  ),
                )



              ),
            ],
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading:CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/${arrContent[index]["img"].toString()}"),
                ),
                title: Text(arrContent[index]["name"].toString()),
                subtitle: Text(arrContent[index]["last message"].toString(),
                ),

                trailing: UiHelper.CustomImage(imgurl:"cameraicon.png"),

              );
            },itemCount: arrContent.length,),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 79,
        width: double.infinity,
        child: Icon(CupertinoIcons.add),

      ),
    );
  }
}