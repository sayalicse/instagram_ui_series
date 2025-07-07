import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class SearchPage extends StatelessWidget{
 
TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Container(
                height: 40,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                      color: Color(0XFF262626)
                ),
                child:Padding(padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    controller:searchController ,
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: 16,
                            color: Colors.grey),
                        border: InputBorder.none,
                      prefixIcon: UiHelper.CustomImage(imgurl: 'searchicon.png')
                    ),

                  ),
                ),
                
              ),
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomImage(imgurl: 'live.png'),
              
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(
                width: 20,
                height: 10,
              ),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    UiHelper.CustomImage(imgurl: 'tvicon.png'),
                    SizedBox(width: 10,),
                    Text('IGTV',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}