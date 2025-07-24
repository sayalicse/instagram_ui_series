import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PostScreen extends StatelessWidget {
  final List<Map<String, dynamic>> arrContent = [
    {
      "type": "image",
      "url": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ1h2gobW-pfXQteYqqse-L4yheMkZvmmqqA&s"
    },
    {
      "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYTRzLea_0zPoz0O7aO_fsZNjo8V5g5FEEpA&s"
    },
    {
      "type": "image",
      "url": "data:image/jpeg;base64,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"
    },
    {
      "type":"video",
      "url":"https://www.google.com/imgres?q=give%20me%20videos%20around%2010%20to%2015%20sec&imgurl=https%3A%2F%2Fcdn.pixabay.com%2Fvideo%2F2022%2F07%2F01%2F122810-726391893_tiny.jpg&imgrefurl=https%3A%2F%2Fpixabay.com%2Fvideos%2Fsearch%2F15%2520seconds%2F&docid=zvYxzM36Szx4_M&tbnid=1zc0PuzIg-qNKM&vet=12ahUKEwiUjpGE4tSOAxVjbmwGHQmzC9cQM3oECEsQAA..i&w=1280&h=720&hcb=2&ved=2ahUKEwiUjpGE4tSOAxVjbmwGHQmzC9cQM3oECEsQAA"
    },
    {
      "type":"video",
      "url":"https://www.google.com/imgres?q=give%20me%20videos%20around%2010%20to%2015%20sec&imgurl=https%3A%2F%2Fcdn.pixabay.com%2Fvideo%2F2021%2F08%2F02%2F83649-584851499_tiny.jpg&imgrefurl=https%3A%2F%2Fpixabay.com%2Fvideos%2Fsearch%2F15%2520minute%2F%3Fpagi%3D2&docid=gllCvA6I4b8u0M&tbnid=UrIs_QCsvAjD6M&vet=12ahUKEwiUjpGE4tSOAxVjbmwGHQmzC9cQM3oECGAQAA..i&w=640&h=360&hcb=2&itg=1&ved=2ahUKEwiUjpGE4tSOAxVjbmwGHQmzC9cQM3oECGAQAA"
    },
    {  "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZPjasn-8EECz9w5rcUPPbKc1Zm77HFjqHlg&s"
    },
    { "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwP51maXB7Fuw11Eoaec91yBKleO0FlyjqyA&s"
    },
    { "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvFAO85i_zS0sDQIzUnj5_0GWwTtxeWpyMnw&s"
    },
    { "type": "image",
      "url":"data:image/jpeg;base64,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"
    },
    { "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3YW6fwPxnr-ggV3y0rIllHoI4UrlE6KLNoA&s"
    },
    { "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpFWyEVW5f2qrGB3mRA7IGjHGst2S1Gk0M5g&s"
    },
    { "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo0trE7s7I6KrzV721lo4STrHY97jWkIqrCA&s"
    },
    { "type": "image",
      "url":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5m0fTgRrTtfZ5nmfIvo3U1KpSGmUXaQyk9g&s"
    }

    // Add more images/videos as needed
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        leading: const Icon(Icons.close, size: 20, color: Colors.white),
        title: const Text('New reel', style: TextStyle(color: Colors.white, fontSize: 20)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 20))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white10,
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(CupertinoIcons.plus_app, size: 15, color: Colors.white),
                      SizedBox(width: 10),
                      Text('Drafts', style: TextStyle(fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white10,
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.copy, size: 15, color: Colors.white),
                      SizedBox(width: 10),
                      Text('Templates', style: TextStyle(fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              SizedBox(width: 10),
              Text('Recents', style: TextStyle(color: Colors.white, fontSize: 15)),
              Icon(Icons.keyboard_arrow_down_sharp, size: 15, color: Colors.white),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.copy_rounded, size: 20, color: Colors.white),
              )
            ],
          ),
          const SizedBox(height: 15),
          // Stack(children: [
          //   Expanded(child: ReelsGrid(arrContent: arrContent)),
          //   Positioned(
          //     bottom: 10,
          //       right: 10,
          //       left: 10,
          //       child:Container(
          //         width: 250,
          //         height: 30,
          //         padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(12),
          //           color: Colors.black.withOpacity(0.7),
          //         ),
          //         child: Row(
          //           children: [
          //             Text('POST',style: TextStyle(color: Colors.white10,fontSize: 15),),
          //           ],
          //         ),
          //       )
          //
          //
          //
          //
          //
          //
          //
          //   )
          // ],)

        ],
      ),
    );
  }
}

class ReelsGrid extends StatefulWidget {
  final List<Map<String, dynamic>> arrContent;

  const ReelsGrid({Key? key, required this.arrContent}) : super(key: key);

  @override
  _ReelsGridState createState() => _ReelsGridState();
}

class _ReelsGridState extends State<ReelsGrid> {
  final Map<int, VideoPlayerController> _videoControllers = {};

  @override
  void dispose() {
    for (var controller in _videoControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: widget.arrContent.length,
      itemBuilder: (context, index) {
        final item = widget.arrContent[index];
        final type = item['type'];
        final url = item['url'];

        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.white10,
            child: type == 'image'
                ? Image.network(url, fit: BoxFit.cover)
                : FutureBuilder(
              future: _initializeVideoController(index, url),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Stack(
                    children: [
                      VideoPlayer(_videoControllers[index]!),
                      const Positioned(
                        bottom: 5,
                        right: 5,
                        child: Icon(Icons.videocam, color: Colors.white, size: 16),
                      )
                    ],
                  );
                } else {
                  return const Center(child: CircularProgressIndicator(strokeWidth: 1));
                }
              },
            ),
          ),
        );
      },
    );
  }

  Future<void> _initializeVideoController(int index, String url) async {
    if (_videoControllers.containsKey(index)) return;
    final controller = VideoPlayerController.network(url);
    _videoControllers[index] = controller;
    await controller.initialize();
    controller.setLooping(true);
    controller.setVolume(0);
    controller.play();
  }
}
