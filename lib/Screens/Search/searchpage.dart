import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class SearchPage extends StatelessWidget{
 
TextEditingController searchController=TextEditingController();
var arrContent=[
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYTRzLea_0zPoz0O7aO_fsZNjo8V5g5FEEpA&s"
  },
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZPjasn-8EECz9w5rcUPPbKc1Zm77HFjqHlg&s"
  },
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwP51maXB7Fuw11Eoaec91yBKleO0FlyjqyA&s"
  },
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvFAO85i_zS0sDQIzUnj5_0GWwTtxeWpyMnw&s"
  },
  {
    "img":"data:image/jpeg;base64,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"
  },
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3YW6fwPxnr-ggV3y0rIllHoI4UrlE6KLNoA&s"
  },
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpFWyEVW5f2qrGB3mRA7IGjHGst2S1Gk0M5g&s"
  },
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo0trE7s7I6KrzV721lo4STrHY97jWkIqrCA&s"
  },
  {
    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5m0fTgRrTtfZ5nmfIvo3U1KpSGmUXaQyk9g&s"
  }


];
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
          SizedBox(height: 10,),
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
                    border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    UiHelper.CustomImage(imgurl: 'tvicon.png'),
                    SizedBox(width: 5,),
                    Text('IGTV',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white24)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Icon(Icons.shop,size: 14.5,),

                    SizedBox(width: 5,),
                    Text('Shop',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(5)
                ),
                child:Center(
                  child:Text('Style',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),),)

              ),
              SizedBox(width: 10,),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white24)
                ),
                child: Center(
                  child: Text('Sports',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 32,
                width: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.white24)
                ),
                child: Center(
                  child: Text('Auto',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
              return Container(
                clipBehavior: Clip.antiAlias,
                height: 124,
                width: 124,
                decoration: BoxDecoration(),
                child: Image.network(arrContent[index]["img"].toString(),fit: BoxFit.cover,)
              );
            },itemCount: arrContent.length,),
          )
        ],
      )
    );
  }
}