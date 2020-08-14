import 'package:flutter/material.dart';
import 'package:homescreen/Animations/FadeAnimation.dart';
import 'package:homescreen/ui/video_player_2.dart';
import 'package:homescreen/widgets/auto_size_text.dart';

class VideoHome extends StatefulWidget {
  @override
  _VideoHomeState createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {
  // bool _isLoading = false;
  // _buildProfileInfo() {
  //   return FadeAnimation(
  //     1.2,
  //     Container(
  //       margin: EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 20),
  //       padding: EdgeInsets.all(20.0),
  //       height: 100.0,
  //       decoration: BoxDecoration(
  //         color: Colors.orangeAccent,
  //         borderRadius: BorderRadius.circular(20),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.black12,
  //             offset: Offset(0, 1),
  //             spreadRadius: 4,
  //             blurRadius: 16.0,
  //           ),
  //         ],
  //       ),
  //       child: Row(
  //         children: <Widget>[
  //           CircleAvatar(
  //             backgroundColor: Colors.white,
  //             radius: 35.0,
  //             backgroundImage: AssetImage('images/fire.png'),
  //           ),
  //           SizedBox(width: 12.0),
  //           Expanded(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 Text(
  //                   ("Brim Ghana"),
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 20.0,
  //                     fontFamily: 'ExpletusSans',
  //                     fontWeight: FontWeight.w600,
  //                   ),
  //                   overflow: TextOverflow.ellipsis,
  //                 ),
  //                 Text(
  //                   '20 subscribers',
  //                   style: TextStyle(
  //                     color: Colors.blue[900],
  //                     fontSize: 16.0,
  //                     fontFamily: 'Righteous',
  //                     fontWeight: FontWeight.w600,
  //                   ),
  //                   overflow: TextOverflow.ellipsis,
  //                 ),
  //               ],
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

//--original copy
  // _buildVideo(Video video) {
  //   return GestureDetector(
  //     onTap: () => Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (_) => VideoScreen(id: video.id),
  //       ),
  //     ),
  //     child: Container(
  //       margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
  //       padding: EdgeInsets.all(10.0),
  //       height: 140.0,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.black12,
  //             offset: Offset(0, 1),
  //             blurRadius: 6.0,
  //           ),
  //         ],
  //       ),
  //       child: Row(
  //         children: <Widget>[
  //           Image(
  //             width: 150.0,
  //             image: NetworkImage(video.thumbnailUrl),
  //           ),
  //           SizedBox(width: 10.0),
  //           Expanded(
  //             child: Text(
  //               video.title,
  //               style: TextStyle(
  //                 color: Colors.black,
  //                 fontSize: 18.0,
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  //-- blue cards
  // _buildVideo() {
  //   return FadeAnimation(
  //     0.0,
  //     SafeArea(
  //       top: false,
  //       bottom: false,
  //       child: Hero(
  //         tag: 0,
  //         child: HeroAnimatingSongCard(
  //             sermon: "Direction And Guidance",
  //             date: "12th June, 2020",
  //             color: Colors.blue,
  //             heroAnimation: AlwaysStoppedAnimation(0),
  //             onPressed: () => {}
  //             // Navigator.of(context).push<void>(
  //             // MaterialPageRoute(
  //             //   builder: (context) => SongDetailTab(
  //             //     id: index,
  //             //     song: songNames[index],
  //             //     color: color,
  //             //   ),
  //             // ),
  //             // ),
  //             ),
  //       ),
  //     ),
  //   );
  // }
  //-- Custom Built one
  _buildVideo() {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoExample(),
        ),
      ),
      child: FadeAnimation(
        0.0,
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          padding: EdgeInsets.all(10.0),
          height: 140.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 4,
                blurRadius: 10,
                offset: Offset(8.0, 10.0),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    // shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('images/sermon_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // shape: BoxShape.circle,
                      color: Colors.black12,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                          // offset: Offset(8.0, 10.0),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 50,
                      color: Colors.blue.shade100,
                    ),
                  )
                  // child: Image(
                  //   width: 100.0,
                  //   image: AssetImage('images/fire.png'),
                  // ),
                  ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 10),
                      child: AutoSizeText(
                        "Title: Direction and Guidance",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Text("BRIM Sunday Service",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontFamily: 'Righteous',
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "July 12th 2020",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13.0,
                        fontFamily: 'Righteous',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // _buildVideo() {
  //   return FadeAnimation(
  //     0.0,
  //     PressableCard(
  //       onPressed: () => {print('Video pressed')},
  //       color: Colors.white,
  //       flattenAnimation: AlwaysStoppedAnimation(0),
  //       child: Row(
  //         children: <Widget>[
  //           Container(
  //               height: 125,
  //               width: 125,
  //               margin: EdgeInsets.only(left: 5),
  //               decoration: BoxDecoration(
  //                 // shape: BoxShape.rectangle2
  //                 borderRadius: BorderRadius.circular(10),
  //                 image: DecorationImage(
  //                   image: AssetImage('images/sermon_image.png'),
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(10),
  //                   // shape: BoxShape.circle,
  //                   color: Colors.black12,
  //                   boxShadow: [
  //                     BoxShadow(
  //                       color: Colors.grey.withOpacity(0.2),
  //                       spreadRadius: 1,
  //                       blurRadius: 10,
  //                       // offset: Offset(8.0, 10.0),
  //                     ),
  //                   ],
  //                 ),
  //                 child: Icon(
  //                   Icons.play_circle_outline,
  //                   size: 50,
  //                   color: Colors.blue.shade100,
  //                 ),
  //               )
  //               // child: Image(
  //               //   width: 100.0,
  //               //   image: AssetImage('images/fire.png'),
  //               // ),
  //               ),
  //           SizedBox(width: 10.0),
  //           SizedBox(
  //             width: 210.0,
  //             height: 140.0,
  //             child: Column(
  //               // mainAxisAlignment: MainAxisAlignment.end,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 15.0, bottom: 20),
  //                   child: AutoSizeText(
  //                     "Title: Direction and Guidance ",
  //                     maxLines: 4,
  //                     textAlign: TextAlign.center,
  //                     style: TextStyle(
  //                         color: Colors.black,
  //                         fontSize: 15.0,
  //                         fontFamily: 'WorkSans',
  //                         fontWeight: FontWeight.w900),
  //                   ),
  //                 ),
  //                 Text("BRIM Sunday Service",
  //                     textAlign: TextAlign.start,
  //                     style: TextStyle(
  //                       color: Colors.black,
  //                       fontSize: 15.0,
  //                       fontFamily: 'Righteous',
  //                       fontWeight: FontWeight.bold,
  //                     )),
  //                 Text(
  //                   "July 12th 2020",
  //                   textAlign: TextAlign.start,
  //                   style: TextStyle(
  //                     color: Colors.grey[700],
  //                     fontSize: 13.0,
  //                     fontFamily: 'Righteous',
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // _loadMoreVideos() async {
  //   _isLoading = true;
  //   List<Video> moreVideos = await APIService.instance
  //       .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
  //   List<Video> allVideos = _channel.videos..addAll(moreVideos);
  //   setState(() {
  //     _channel.videos = allVideos;
  //   });
  //   _isLoading = false;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B2B52),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        // automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'SERMONS',
          style: TextStyle(fontFamily: 'WorkSans', fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          // _buildProfileInfo(),
          SizedBox(height: 20),
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
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  // if (index == 0) {
                  //   return _buildProfileInfo();
                  // }
                  return _buildVideo();
                  // Video video = _channel.videos[index - 1];
                  // return _buildVideo(video);
                },
              ),
            ),
          ),
        ],
      ),
    );
    // : Center(
    //     child: CircularProgressIndicator(
    //       valueColor: AlwaysStoppedAnimation<Color>(
    //         Theme.of(context).primaryColor, // Red
    //       ),
    //     ),
    //   ),
  }
}
