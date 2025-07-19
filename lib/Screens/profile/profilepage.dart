import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

class ProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 88,
          leading: Icon(Icons.lock, size: 20),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('sayali_patil_2003', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(width: 8),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/createicon.png', width: 30, height: 30, color: Colors.white),
              iconSize: 30,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.toc, color: Colors.white))
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
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHlrT9mV0pvMTa8X33POtsMd2pgzZGAPJCA&s"),
                      radius: 30,
                    ),
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
                            style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
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
                        child: Icon(Icons.add, size: 12, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('0', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text('posts', style: TextStyle(fontSize: 10, color: Colors.white)),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('77', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    Text('followers', style: TextStyle(fontSize: 10, color: Colors.white)),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('79', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    Text('following', style: TextStyle(fontSize: 10, color: Colors.white)),
                  ],
                )
              ],
            ),
            SizedBox(height: 18),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  height: 28,
                  width: 150,
                  decoration: BoxDecoration(color: Color(0xFF4E545C), borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Text('Edit profile')),
                ),
                SizedBox(width: 10),
                Container(
                  height: 28,
                  width: 150,
                  decoration: BoxDecoration(color: Color(0xFF4E545C), borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Text('Share profile')),
                ),
                SizedBox(width: 10),
                Container(
                  height: 28,
                  width: 30,
                  decoration: BoxDecoration(color: Color(0xFF4E545C), borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Icon(
                      Icons.person_pin,

                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 20),

            // TAB BAR
            TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.grid_on)),
                Tab(icon: Icon(Icons.person_pin_outlined)),
              ],
            ),

            // TAB BAR VIEW
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Your Posts", style: TextStyle(color: Colors.white))),
                  Center(child: Text("Tagged Posts", style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}