import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Screens/like/likepage.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

import '../Chats/chatpage.dart';

class HomePage extends StatelessWidget {
  var arrcontent = [
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE_Q4uvf0d2194gczvijuY_w8OAiAPMNHWeD-x8HJuV1CMF2kg-g--upfSEtkgZ9N_xU&usqp=CAU",
      "name": "Sayali_Patil"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s",
      "name": "Satyajeetp"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJ9cnXUWrzDFunS7hwH7x4WivNEHPYTpMrA&s",
      "name": "Satyap"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE_Q4uvf0d2194gczvijuY_w8OAiAPMNHWeD-x8HJuV1CMF2kg-g--upfSEtkgZ9N_xU&usqp=CAU",
      "name": "Sayali_Patil"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s",
      "name": "Satyajeetp"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJ9cnXUWrzDFunS7hwH7x4WivNEHPYTpMrA&s",
      "name": "Satyap"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE_Q4uvf0d2194gczvijuY_w8OAiAPMNHWeD-x8HJuV1CMF2kg-g--upfSEtkgZ9N_xU&usqp=CAU",
      "name": "Sayali_Patil"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s",
      "name": "Satyajeetp"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJ9cnXUWrzDFunS7hwH7x4WivNEHPYTpMrA&s",
      "name": "Satyap"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE_Q4uvf0d2194gczvijuY_w8OAiAPMNHWeD-x8HJuV1CMF2kg-g--upfSEtkgZ9N_xU&usqp=CAU",
      "name": "Sayali_Patil"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s",
      "name": "Satyajeetp"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJ9cnXUWrzDFunS7hwH7x4WivNEHPYTpMrA&s",
      "name": "Satyap"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: UiHelper.CustomImage(imgurl: 'cameraicon.png'),
        title: UiHelper.CustomImage(imgurl: 'instalg.png'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>LikePage()));
              },
              icon: UiHelper.CustomImage(imgurl: 'like.png')),
          IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Chatpage()));//when click then go back to home screen
              },
              icon: UiHelper.CustomImage(imgurl: 'messanger.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔹 Horizontal Story List
            SizedBox(
              height: 95,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: arrcontent.length,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            arrcontent[index]["img"].toString(),
                          ),
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 65,
                          child: Text(
                            arrcontent[index]["name"].toString(),
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),

            // 🔹 Post Header (User Info + More Icon)
            Container(
              color: Colors.black12,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/instadp.png'),
                ),
                title: Text(
                  'Sayali_Patil',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                subtitle: Text(
                  'Takari, India',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
                trailing: Image.asset(
                  'assets/images/moreicon.png',
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ),
              ),
            ),
SizedBox(
  height: 8,
),
            // 🔹 Post Image
            Container(
              clipBehavior: Clip.antiAlias,
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(

              ),
              child: Image.asset(
                'assets/images/rectangle.png',
                fit: BoxFit.cover,
              ),

            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(height: 8),

// Post Action Buttons (Like, Comment, Share)
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              color: Colors.black12,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/like.png',
                        height: 28,
                        width: 28,
                        color: Colors.white,
                      ),
                      SizedBox(width: 16),
                      Image.asset(
                        'assets/images/comment.png',
                        height: 28,
                        width: 28,
                        color: Colors.white,
                      ),
                      SizedBox(width: 16),
                      Image.asset(
                        'assets/images/messanger.png',
                        height: 28,
                        width: 28,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/save.png',
                        height: 24,
                        width: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/oval.png',
                        height: 24,
                        width: 24,

                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          children: [
                            TextSpan(
                              text: 'Liked by ',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            TextSpan(
                              text: 'Sayali_Patil',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            TextSpan(
                              text: '44,686 others',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                      child:RichText(

                          text:TextSpan(
                              style: TextStyle(fontSize: 15, color: Colors.white),
                              children: [
                                TextSpan(
                                  text: 'Sayali_Patil ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' The game in japan was amazing and i want to share some photos ',
                                  style: TextStyle(fontWeight: FontWeight.normal),
                                ),

                              ]

                          ) )
                  )

                ],
              )


            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.black12,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/instadp.png'),
                ),
                title: Text(
                  'Satyajeet Patil',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                subtitle: Text(
                  'Delhi, India',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
                trailing: Image.asset(
                  'assets/images/moreicon.png',
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(

              ),
              child: Image.asset(
                'assets/images/rectangle.png',
                fit: BoxFit.cover,
              ),

            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(height: 8),
            Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                color: Colors.black12,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/like.png',
                          height: 28,
                          width: 28,
                          color: Colors.white,
                        ),
                        SizedBox(width: 16),
                        Image.asset(
                          'assets/images/comment.png',
                          height: 28,
                          width: 28,
                          color: Colors.white,
                        ),
                        SizedBox(width: 16),
                        Image.asset(
                          'assets/images/messanger.png',
                          height: 28,
                          width: 28,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/save.png',
                          height: 24,
                          width: 24,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/oval.png',
                          height: 24,
                          width: 24,

                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            children: [
                              TextSpan(
                                text: 'Liked by ',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'Sayali_Patil',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Satyajeet_Patil',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '44,686 others',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child:RichText(

                            text:TextSpan(
                                style: TextStyle(fontSize: 15, color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: 'Satyajeet_Patil ',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' The nature is beautiful and location is nice you can go and explore it ',
                                    style: TextStyle(fontWeight: FontWeight.normal),
                                  ),

                                ]

                            ) )
                    )

                  ],
                )


            ),




          ],
        ),
      ),
    );
  }
}
