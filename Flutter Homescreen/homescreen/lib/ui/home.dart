import 'package:flutter/material.dart';
import 'package:homescreen/Animations/FadeAnimation.dart';
import 'package:homescreen/ui/grid.dart';
import 'package:homescreen/ui/login.dart';
import 'package:homescreen/ui/story_page_view.dart';

class Home extends StatelessWidget {
  static const _logoutMessage = Text("Are you sure you want to Log Out?");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B2B52),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FadeAnimation(
                  0.0,
                  Text(
                    "BRIM",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 5.0,
                      fontSize: 18,
                      fontFamily: 'ExpletusSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                FadeAnimation(
                  0.0,
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.deepOrange,
                        ),
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 4,
                            blurRadius: 10,
                            // offset: Offset(8.0, 10.0),
                          ),
                        ]),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoryPageView(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/fire.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                FadeAnimation(
                  0.0,
                  IconButton(
                    alignment: Alignment.topCenter,
                    icon: Image.asset(
                      "images/signout.png",
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Log out?'),
                            content: _logoutMessage,
                            titleTextStyle: TextStyle(
                                fontFamily: 'ExpletusSans',
                                color: Colors.black),
                            contentTextStyle: TextStyle(
                                fontFamily: 'WorkSans', color: Colors.black),
                            actions: [
                              FlatButton(
                                  child: const Text(
                                    'Yes',
                                    style: TextStyle(fontFamily: 'Righteous'),
                                  ),
                                  onPressed: () => {
                                        print("Signout Button Pressed"),
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ),
                                        )
                                      }),
                              FlatButton(
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(fontFamily: 'Righteous'),
                                ),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          );
                        },
                      );
                      //
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          GridDashboard(),
          // SizedBox(height: 10),
        ],
      ),
    );
  }
}
// class Home extends StatefulWidget {
//   // final title;

//   // Home({Key key, this.title}) : super(key: key);
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff2B2B52),
//       body: Column(
//         children: <Widget>[
//           SizedBox(height: 50),
//           Padding(
//             padding: EdgeInsets.only(left: 20, right: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     FadeAnimation(
//                       0.0,
//                       Text(
//                         "BRIM Church",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontFamily: 'ExpletusSans',
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 4),
//                     // Text(
//                     //   "Home",
//                     //   style: GoogleFonts.openSans(
//                     //     textStyle: TextStyle(
//                     //         color: Colors.black87,
//                     //         fontSize: 14,
//                     //         fontWeight: FontWeight.w600),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: FadeAnimation(
//                     0.0,
//                     Container(
//                       height: 60,
//                       width: 60,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: Colors.deepOrange,
//                         ),
//                         image: DecorationImage(
//                           image: AssetImage('images/fire.jpg'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 4),
//                 FadeAnimation(
//                   0.0,
//                   IconButton(
//                     alignment: Alignment.topCenter,
//                     icon: Image.asset(
//                       "images/signout.png",
//                       color: Colors.white,
//                     ),
//                     // icon: Icon(
//                     //   Icons.lock_outline,
//                     //   size: 30,
//                     //   color: Colors.blueGrey,
//                     // ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => LoginPage(),
//                         ),
//                       );
//                       print("Signout Button Pressed");
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           GridDashboard(),
//           // SizedBox(height: 10),
//         ],
//       ),
//     );
//   }
// }
