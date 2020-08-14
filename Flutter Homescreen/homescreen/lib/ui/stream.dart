import 'package:flutter/material.dart';
import 'package:homescreen/utils/customicon.dart';
import 'package:homescreen/widgets/auto_size_text.dart';

class Stream extends StatefulWidget {
  @override
  _StreamState createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[HomeScreeTopPart(), HomeScreenBottomPart()],
        ),
      ),
    );
  }
}

class HomeScreeTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "images/sermon_image.png",
                    fit: BoxFit.cover,
                    height: 350,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 10,
                        // offset: Offset(8.0, 10.0),
                      ),
                    ]
                        // gradient: LinearGradient(
                        //     colors: [
                        //       const Color(0x00000000),
                        //       const Color(0xD9333333)
                        //     ],
                        //     stops: [
                        //       0.0,
                        //       0.9
                        //     ],
                        //     begin: FractionalOffset(0.0, 0.0),
                        //     end: FractionalOffset(0.0, 1.0)),
                        ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 130.0, left: 30.0, right: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "JULY 12TH 2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                          AutoSizeText(
                            "DIRECTION AND GUIDANCE",
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontFamily: 'ExpletusSans',
                                fontWeight: FontWeight.w900),
                          ),
                          // Text(
                          //   "DIRECTION AND GUIDANCE",
                          //   style: TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 45.0,
                          //       fontFamily: "SF-Pro-Display-Bold"),
                          // )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 370.0,
            right: -20.0,
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xFFE52020),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xFFE52020),
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 80.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Watch Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(CustomIcons.back_icon,
                                size: 25.0, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class HomeScreenBottomPart extends StatelessWidget {
  List<String> images = [
    "images/sermon_image.png",
    "images/sermon_image.png",
    "images/sermon_image.png"
  ];

  List<String> titles = [
    "My Words Will No Longer be Postponed",
    "The Watchman And His Message",
    "Are You the Bride or Friend?"
  ];

  List<Widget> movies() {
    List<Widget> movieList = new List();

    for (int i = 0; i < 3; i++) {
      var movieitem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
        child: Container(
          height: 220.0,
          width: 135.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                child: Image.asset(
                  images[i],
                  width: double.infinity,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
                child: AutoSizeText(titles[i],
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, fontFamily: "WorkSans")),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 3.0),
              //   child: Text(i == 0 ? "Season 2" : ""),
              // )
            ],
          ),
        ),
      );
      movieList.add(movieitem);
    }
    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 360.0,
      margin: EdgeInsets.only(left: 15.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Watch now",
                  style: TextStyle(
                      fontSize: 22.0, fontFamily: "SF-Pro-Display-Bold"),
                ),
                SizedBox(
                  height: 50,
                ),
                // FlatButton(
                //   child: Text("View more"),
                //   onPressed: () {},
                // )
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: movies(),
            ),
          )
        ],
      ),
    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);

    var controlpoint = Offset(35.0, size.height);
    var endpoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
