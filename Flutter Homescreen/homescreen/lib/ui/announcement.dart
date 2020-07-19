// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_lorem/flutter_lorem.dart';

// // import 'utils.dart';
// import 'widgets.dart';

class Announcement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _buildAnnouncement() {
      return Card(
        elevation: 1.5,
        margin: EdgeInsets.fromLTRB(6, 12, 6, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          splashColor: Colors.orange,
          onTap: () => print("Announcement Item Tapped"),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    'Half'.substring(0, 1),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Righteous',
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 16)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Half Night Service',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'ExpletusSans',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Text(
                        'There will  be a half night service, on Friday, 24th July 2020. Kindly take note and prepare yourself for the time ahead.',
                        style: TextStyle(fontFamily: 'WorkSans'),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Posted: 18th July, 2020',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Acme'),
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

    return Scaffold(
      backgroundColor: Color(0xff2B2B52),
      appBar: AppBar(
        title: Text('Announcement'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            // if (index == 0) {
            //   return _buildProfileInfo();
            // }
            return _buildAnnouncement();
            // Video video = _channel.videos[index - 1];
            // return _buildVideo(video);
          },
        ),
      ),
    );
  }
}

// class NewsTab extends StatefulWidget {
//   static const title = 'News';
//   static const androidIcon = Icon(Icons.library_books);
//   static const iosIcon = Icon(CupertinoIcons.news);

//   @override
//   _NewsTabState createState() => _NewsTabState();
// }

// class _NewsTabState extends State<NewsTab> {
//   static const _itemsLength = 20;

//   List<Color> colors;
//   List<String> titles;
//   List<String> contents;

//   // @override
//   // void initState() {
//   //   colors = getRandomColors(_itemsLength);
//   //   titles = List.generate(_itemsLength, (index) => generateRandomHeadline());
//   //   contents =
//   //       List.generate(_itemsLength, (index) => lorem(paragraphs: 1, words: 24));
//   //   super.initState();
//   // }

//   Widget _listBuilder(BuildContext context, int index) {
//     if (index >= _itemsLength) return null;

//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Card(
//         elevation: 1.5,
//         margin: EdgeInsets.fromLTRB(6, 12, 6, 0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(4),
//         ),
//         child: InkWell(
//           // Make it splash on Android. It would happen automatically if this
//           // was a real card but this is just a demo. Skip the splash on iOS.
//           onTap: defaultTargetPlatform == TargetPlatform.iOS ? null : () {},
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CircleAvatar(
//                   backgroundColor: colors[index],
//                   child: Text(
//                     titles[index].substring(0, 1),
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.only(left: 16)),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         titles[index],
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Padding(padding: EdgeInsets.only(top: 8)),
//                       Text(
//                         contents[index],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // ===========================================================================
//   // Non-shared code below because this tab uses different scaffolds.
//   // ===========================================================================

//   Widget _buildAndroid(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(NewsTab.title),
//       ),
//       body: Container(
//         child: ListView.builder(
//           itemBuilder: _listBuilder,
//         ),
//       ),
//     );
//   }
// }
