import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home/homepage.dart';

class LikePage extends StatelessWidget{
  const LikePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
        }, icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,)),
        title: Text('Notifications',style: TextStyle(color: Colors.white,fontSize: 18),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
        children: [
          SizedBox(width: 40,),
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none, // allow overflow if needed
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQlNudYjDF3bnPb1H1pM3OxTUo3Whh7R49RQ&s",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 10,
                    
                    right: -5, // move slightly inward to center better
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHlrT9mV0pvMTa8X33POtsMd2pgzZGAPJCA&s",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Follow requests',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'shru_fighter_2811+56 others',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8), // spacing between dot and arrow
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              )


            ],
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // aligns content to the start
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Today',style: TextStyle(color: Colors.white,fontSize: 15),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Large Circle Avatar with border
                          Container(
                            padding: EdgeInsets.all(0.5),
                            decoration: BoxDecoration(
                              color: Colors.grey, // border color
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.black,
                            ),
                          ),
                      
                          // Small 'i' Circle positioned inside the large circle (e.g., bottom-right)
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white, // white border for 'i'
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black,
                                child: Text(
                                  'i',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Your support request from 21 July was just \nupdated. ',
                              style: TextStyle(
                                color: Colors.white,

                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: '5h',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                  
                      


                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last 7 days',style: TextStyle(color: Colors.white,fontSize: 15),),
                        SizedBox(height: 11,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHlrT9mV0pvMTa8X33POtsMd2pgzZGAPJCA&s"),
                            ),
                            SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'dhirajbachche_pati\nl_07 requested to\n follow you. ',
                                    style: TextStyle(
                                      color: Colors.white,

                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '5d',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15,),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text('Confirm'),
                            ),
                            SizedBox(width: 6,),
                            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white10,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                            ) ,child: Text('Delete'))





                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last 30 days',style: TextStyle(color: Colors.white,fontSize: 15),),
                        SizedBox(height: 11,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s"),
                            ),
                            SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '_p_patil_priya_0325 started\n following you. ',
                                    style: TextStyle(
                                      color: Colors.white,

                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '1w',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15,),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: Colors.deepPurpleAccent,
                            //     foregroundColor: Colors.white,
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //   ),
                            //   child: Text('Confirm'),
                            // ),
                            SizedBox(width: 59,),
                            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white10,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ) ,child: Text('Following'))





                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text('Last 30 days',style: TextStyle(color: Colors.white,fontSize: 15),),
                        // SizedBox(height: 11,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE_Q4uvf0d2194gczvijuY_w8OAiAPMNHWeD-x8HJuV1CMF2kg-g--upfSEtkgZ9N_xU&usqp=CAU"),
                            ),
                            SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'dr_ajay_jamdade_\n requested to\n follow you. ',
                                    style: TextStyle(
                                      color: Colors.white,

                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '1w',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15,),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text('Confirm'),
                            ),
                            SizedBox(width: 15,),
                            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white10,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ) ,child: Text('Following'))





                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text('Last 30 days',style: TextStyle(color: Colors.white,fontSize: 15),),
                        // SizedBox(height: 11,),
                        Row(
                          children: [
                            Stack(
                              children: [
                                // Main Profile Image
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJ9cnXUWrzDFunS7hwH7x4WivNEHPYTpMrA&s",
                                  ),
                                ),

                                // Small red circle with white heart icon
                                Positioned(
                                  bottom: -1,
                                  right: -1,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.red,
                                    child: Icon(
                                      Icons.favorite, // heart icon
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'ganeshpatil_0305 liked your story. ',
                                    style: TextStyle(
                                      color: Colors.white,

                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '2w',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 70,),

                     Container(
                      width: 50, // square dimensions
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s'), // your background image
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10), // rounded square
                      ),




                     )],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Older',style: TextStyle(color: Colors.white,fontSize: 15),),
                              SizedBox(height: 11,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s"),
                                  ),
                                  SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '_p_patil_priya_0325 started\n following you. ',
                                          style: TextStyle(
                                            color: Colors.white,

                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '1w',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // ElevatedButton(
                                  //   onPressed: () {},
                                  //   style: ElevatedButton.styleFrom(
                                  //     backgroundColor: Colors.deepPurpleAccent,
                                  //     foregroundColor: Colors.white,
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //     ),
                                  //   ),
                                  //   child: Text('Confirm'),
                                  // ),
                                  SizedBox(width: 59,),
                                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white10,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ) ,child: Text('Following'))





                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text('Last 30 days',style: TextStyle(color: Colors.white,fontSize: 15),),
                              // SizedBox(height: 11,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJ9cnXUWrzDFunS7hwH7x4WivNEHPYTpMrA&s",

                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'pranav_1009\nrequested to follow\nyou. ',
                                          style: TextStyle(
                                            color: Colors.white,

                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '5w',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text('Confirm'),
                                  ),
                                  SizedBox(width: 15,),
                                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white10,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ) ,child: Text('Following'))





                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Stack(
                              children: [
                                // Main Profile Image
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJ9cnXUWrzDFunS7hwH7x4WivNEHPYTpMrA&s",
                                  ),
                                ),

                                // Small red circle with white heart icon
                                Positioned(
                                  bottom: -1,
                                  right: -1,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.red,
                                    child: Icon(
                                      Icons.favorite, // heart icon
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'aryan_chavan_0707 liked your story.\n comment ',
                                    style: TextStyle(
                                      color: Colors.white,

                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '😢 5w',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 70,),

                            Container(
                              width: 50, // square dimensions
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s'), // your background image
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10), // rounded square
                              ),




                            )],
                        ),
                        SizedBox(height: 15,),

                        Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Suggested for you',style: TextStyle(color: Colors.white,fontSize: 15),),
                              SizedBox(height: 11,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRGQuizczA_CYF0Lo-xuCE1FWvsO7ZdsGWw&s"),
                                  ),
                                  SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'shivraj Patil\n ',
                                          style: TextStyle(
                                            color: Colors.white,

                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Followed by shruti_5537',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // ElevatedButton(
                                  //   onPressed: () {},
                                  //   style: ElevatedButton.styleFrom(
                                  //     backgroundColor: Colors.deepPurpleAccent,
                                  //     foregroundColor: Colors.white,
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //     ),
                                  //   ),
                                  //   child: Text('Confirm'),
                                  // ),
                                  SizedBox(width: 59,),
                                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ) ,child: Text('Follow')),
                                  SizedBox(width: 15,),
                                  Icon(Icons.close,color: Colors.grey,)





                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN__lAaf0b4nZ5asE_zY1IMhPiEh3MgRwBrA&s"),
                                  ),
                                  SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'shivraj Patil\n ',
                                          style: TextStyle(
                                            color: Colors.white,

                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Followed by shruti_5537',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // ElevatedButton(
                                  //   onPressed: () {},
                                  //   style: ElevatedButton.styleFrom(
                                  //     backgroundColor: Colors.deepPurpleAccent,
                                  //     foregroundColor: Colors.white,
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //     ),
                                  //   ),
                                  //   child: Text('Confirm'),
                                  // ),
                                  SizedBox(width: 59,),
                                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ) ,child: Text('Follow')),
                                  SizedBox(width: 15,),
                                  Icon(Icons.close,color: Colors.grey,)





                                ],
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThM_H4wuCA4iJJz-uqNYj0jaQAzYoXHm0z7A&s"),
                                  ),
                                  SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Mr Patil ❤️\n ',
                                          style: TextStyle(
                                            color: Colors.white,

                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Followed by shruti_5537',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // ElevatedButton(
                                  //   onPressed: () {},
                                  //   style: ElevatedButton.styleFrom(
                                  //     backgroundColor: Colors.deepPurpleAccent,
                                  //     foregroundColor: Colors.white,
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //     ),
                                  //   ),
                                  //   child: Text('Confirm'),
                                  // ),
                                  SizedBox(width: 59,),
                                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ) ,child: Text('Follow')),
                                  SizedBox(width: 15,),
                                  Icon(Icons.close,color: Colors.grey,)





                                ],
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7uKGX20j1XzjZ_89rX7LSqowGnKmplmdhAg&s"),
                                  ),
                                  SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Aditi ❤️\n ',
                                          style: TextStyle(
                                            color: Colors.white,

                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Followed by shruti_5537',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // ElevatedButton(
                                  //   onPressed: () {},
                                  //   style: ElevatedButton.styleFrom(
                                  //     backgroundColor: Colors.deepPurpleAccent,
                                  //     foregroundColor: Colors.white,
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //     ),
                                  //   ),
                                  //   child: Text('Confirm'),
                                  // ),
                                  SizedBox(width: 59,),
                                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ) ,child: Text('Follow')),
                                  SizedBox(width: 15,),
                                  Icon(Icons.close,color: Colors.grey,),






                                ],
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN__lAaf0b4nZ5asE_zY1IMhPiEh3MgRwBrA&s"),
                                  ),
                                  SizedBox(width: 10,),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'kiyo\n ',
                                          style: TextStyle(
                                            color: Colors.white,

                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Followed by shruti_5537',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  // ElevatedButton(
                                  //   onPressed: () {},
                                  //   style: ElevatedButton.styleFrom(
                                  //     backgroundColor: Colors.deepPurpleAccent,
                                  //     foregroundColor: Colors.white,
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //     ),
                                  //   ),
                                  //   child: Text('Confirm'),
                                  // ),
                                  SizedBox(width: 59,),
                                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ) ,child: Text('Follow')),
                                  SizedBox(width: 15,),
                                  Icon(Icons.close,color: Colors.grey,)





                                ],
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),


                ],
              ),
            ),

          )
          


        ],
      ),),
    );
  }

}