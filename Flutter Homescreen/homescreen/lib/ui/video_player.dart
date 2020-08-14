import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:video_player/video_player.dart';
// import 'package:homescreen/ui/widgets.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.guthub.io/assets-for-api-docs/assets/videos/butterfly.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize();
  }

  @override
  Widget build(BuildContext context) {
    // Widget _buildBody() {
    //   return SafeArea(
    //     bottom: false,
    //     left: false,
    //     right: false,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         Hero(
    //           tag: 0,
    //           child: HeroAnimatingSongCard(
    //             sermon: "Direction And Guidance",
    //             color: Colors.blue,
    //             heroAnimation: AlwaysStoppedAnimation(1),
    //           ),
    //           // This app uses a flightShuttleBuilder to specify the exact widget
    //           // to build while the hero transition is mid-flight.
    //           //
    //           // It could either be specified here or in SongsTab.
    //           flightShuttleBuilder: (context, animation, flightDirection,
    //               fromHeroContext, toHeroContext) {
    //             return HeroAnimatingSongCard(
    //               sermon: "Direction And Guidance",
    //               color: Colors.blue,
    //               heroAnimation: animation,
    //             );
    //           },
    //         ),
    //         Divider(
    //           height: 0,
    //           color: Colors.grey,
    //         ),
    //         Expanded(
    //           child: ListView.builder(
    //             itemCount: 10,
    //             itemBuilder: (context, index) {
    //               if (index == 0) {
    //                 return Padding(
    //                   padding:
    //                       const EdgeInsets.only(left: 15, top: 16, bottom: 8),
    //                   child: Text(
    //                     'You might also like:',
    //                     style: TextStyle(
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w500,
    //                     ),
    //                   ),
    //                 );
    //               }
    //               // Just a bunch of boxes that simulates loading song choices.
    //               return SongPlaceholderTile();
    //             },
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    return Scaffold(
      backgroundColor: Color(0xff2B2B52),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Video Player',
          style: TextStyle(fontFamily: 'WorkSans', fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: _controller.value.initialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SpinKitCircle(color: Colors.blue),
                            Text("Video Not Loaded Yet"),
                          ],
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
