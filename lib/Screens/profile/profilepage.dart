import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 88,
          leading: Icon(Icons.lock, size: 20),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('sayali_patil_2003',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(width: 8),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/createicon.png',
                width: 30,
                height: 30,
                color: Colors.white,
              ),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.toc, color: Colors.white),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHlrT9mV0pvMTa8X33POtsMd2pgzZGAPJCA&s"),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
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
                                  fontWeight: FontWeight.w500),
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
                      Text('0',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Text('posts',
                            style:
                            TextStyle(fontSize: 10, color: Colors.white)),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text('77',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text('followers',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text('79',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text('following',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
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
                    decoration: BoxDecoration(
                        color: Color(0xFF4E545C),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text('Edit profile',
                            style: TextStyle(color: Colors.white))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 28,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF4E545C),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text('Share profile',
                            style: TextStyle(color: Colors.white))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 28,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xFF4E545C),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Icon(
                        Icons.person_pin,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),

              // Tab Bar
              TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(icon: Icon(Icons.grid_on)),
                  Tab(icon: Icon(Icons.person_pin_outlined)),
                ],
              ),

              // Fixed height for TabBarView
              SizedBox(
                height: 200,
                child: TabBarView(
                  children: [
                    CaptureMomentsTab(),
                    // Container(),
                    // Placeholder for TaggedPostsTab
                    UploadphotovideoTab()
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

class UploadphotovideoTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Photos and \nVideos of you",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  "When people tag you in photos and\n videos,they'll appear here",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                SizedBox(height: 30),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Complete your profile',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '2 of 4 ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Complete',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    border: Border.all(width: 1.5, color: Colors.white10),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.grey,
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text('Add your name',
                                            style: TextStyle(fontSize: 13, color: Colors.white)),
                                        SizedBox(height: 5),
                                        Text(
                                          "Add your full name so your\n friends know it's you.",
                                          style: TextStyle(fontSize: 10, color: Colors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 35),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurpleAccent,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Text('Add name'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    border: Border.all(width: 1.5, color: Colors.white10),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.grey,
                                          child: Image.asset('assets/images/comment.png'),
                                        ),
                                        SizedBox(height: 10),
                                        Text('Add bio',
                                            style: TextStyle(fontSize: 13, color: Colors.white)),
                                        SizedBox(height: 5),
                                        Text(
                                          "Tell your followers a little bit\n about yourself.",
                                          style: TextStyle(fontSize: 10, color: Colors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 35),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurpleAccent,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Text('Add bio'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Profile Picture Card with Check
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    border: Border.all(width: 1.5, color: Colors.white10),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.grey,
                                              child: Icon(Icons.person_pin, color: Colors.white),
                                            ),
                                            Positioned(
                                              bottom: -2,
                                              right: -2,
                                              child: CircleAvatar(
                                                radius: 10,
                                                backgroundColor: Colors.green,
                                                child: Icon(Icons.check, size: 10, color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text('Add profile picture',
                                            style: TextStyle(fontSize: 13, color: Colors.white)),
                                        SizedBox(height: 5),
                                        Text(
                                          "Choose a profile picture\n to represent yourself on\n Instagram.",
                                          style: TextStyle(fontSize: 10, color: Colors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 20),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurpleAccent,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Text('Change picture'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Find People to Follow
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    border: Border.all(width: 1.5, color: Colors.white10),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.grey,
                                              child: Icon(Icons.people_outline, color: Colors.white),
                                            ),
                                            Positioned(
                                              bottom: -2,
                                              right: -2,
                                              child: CircleAvatar(
                                                radius: 10,
                                                backgroundColor: Colors.green,
                                                child: Icon(Icons.check, size: 10, color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Text('Find people to follow',
                                            style: TextStyle(fontSize: 13, color: Colors.white)),
                                        SizedBox(height: 5),
                                        Text(
                                          "Follow people and interests you\n care about.",
                                          style: TextStyle(fontSize: 10, color: Colors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 30),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurpleAccent,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Text('Change picture'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ],
            ),
          ),
        )
    );
  }
}

class CaptureMomentsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Capture the moment\nwith a friend",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Create your first post',
                style: TextStyle(fontSize: 13, color: Colors.blueAccent),
              ),
              SizedBox(height: 30),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Complete your profile',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '2 of 4 ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Complete',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(width: 1.5, color: Colors.white10),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('Add your name',
                                          style: TextStyle(fontSize: 13, color: Colors.white)),
                                      SizedBox(height: 5),
                                      Text(
                                        "Add your full name so your\n friends know it's you.",
                                        style: TextStyle(fontSize: 10, color: Colors.grey),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 35),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.deepPurpleAccent,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Text('Add name'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(width: 1.5, color: Colors.white10),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: Image.asset('assets/images/comment.png'),
                                      ),
                                      SizedBox(height: 10),
                                      Text('Add bio',
                                          style: TextStyle(fontSize: 13, color: Colors.white)),
                                      SizedBox(height: 5),
                                      Text(
                                        "Tell your followers a little bit\n about yourself.",
                                        style: TextStyle(fontSize: 10, color: Colors.grey),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 35),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.deepPurpleAccent,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Text('Add bio'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Profile Picture Card with Check
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(width: 1.5, color: Colors.white10),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.grey,
                                            child: Icon(Icons.person_pin, color: Colors.white),
                                          ),
                                          Positioned(
                                            bottom: -2,
                                            right: -2,
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.green,
                                              child: Icon(Icons.check, size: 10, color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text('Add profile picture',
                                          style: TextStyle(fontSize: 13, color: Colors.white)),
                                      SizedBox(height: 5),
                                      Text(
                                        "Choose a profile picture\n to represent yourself on\n Instagram.",
                                        style: TextStyle(fontSize: 10, color: Colors.grey),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.deepPurpleAccent,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Text('Change picture'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Find People to Follow
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(width: 1.5, color: Colors.white10),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.grey,
                                            child: Icon(Icons.people_outline, color: Colors.white),
                                          ),
                                          Positioned(
                                            bottom: -2,
                                            right: -2,
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.green,
                                              child: Icon(Icons.check, size: 10, color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text('Find people to follow',
                                          style: TextStyle(fontSize: 13, color: Colors.white)),
                                      SizedBox(height: 5),
                                      Text(
                                        "Follow people and interests you\n care about.",
                                        style: TextStyle(fontSize: 10, color: Colors.grey),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 30),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.deepPurpleAccent,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Text('Change picture'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      )
    );
  }
}
