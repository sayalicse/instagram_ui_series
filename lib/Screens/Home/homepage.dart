import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class HomePage extends StatelessWidget {
  var arrcontent = [
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE_Q4uvf0d2194gczvijuY_w8OAiAPMNHWeD-x8HJuV1CMF2kg-g--upfSEtkgZ9N_xU&usqp=CAU",
      "name": "Sayali_Patil"
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
      backgroundColor: Colors.black, // Match Instagram dark theme
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: UiHelper.CustomImage(imgurl: 'cameraicon.png'),
        title: UiHelper.CustomImage(imgurl: 'instalg.png'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: UiHelper.CustomImage(imgurl: 'igtv.png')),
          IconButton(
              onPressed: () {},
              icon: UiHelper.CustomImage(imgurl: 'messanger.png'))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 95,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: arrcontent.length,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        NetworkImage(arrcontent[index]["img"].toString()),
                      ),
                      const SizedBox(height: 6),
                      SizedBox(
                        width: 65,
                        child: Text(
                          arrcontent[index]["name"].toString(),
                          style:
                          const TextStyle(fontSize: 12, color: Colors.white),
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
          Container(
            height: 54,
            width: 375,
            color: Colors.black12,
            child: ListTile(
              leading:
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: UiHelper.CustomImage(imgurl: 'google.png'),
              )

            ),
          )
        ],
      ),
    );
  }
}
