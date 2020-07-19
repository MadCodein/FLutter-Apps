import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xFF2B2B52)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(35),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.orange.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 10,
                                // offset: Offset(8.0, 10.0),
                              ),
                            ]),
                        child: Center(
                          child: Image.asset(
                            'images/fire.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //   backgroundColor: Colors.white,
                      //   radius: 80.0,
                      //   foregroundColor: Colors.green,
                      //   child: Image.asset(
                      //     "images/fire.png",
                      //     width: 200,
                      //     height: 200,
                      //   ),
                      // ),
                      Padding(padding: EdgeInsets.only(top: 30.0)),
                      Text(
                        "BRIM CHURCH APP",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w800,
                          fontSize: 24.0,
                          fontFamily: 'Righteous',
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(30)),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Word Of The Day",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 120, right: 120),
                            child: Divider(color: Colors.white),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 30, right: 30),
                            child: Text(
                              "For the wages of sin is death, but the gift of God is eternal life in Christ Jesus Our Lord",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Righteous',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 30)),
                          Text(
                            "Romans 8 : 23",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SpinKitWave(
                        color: Colors.orange, type: SpinKitWaveType.start),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Copyright 2020",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'FredokaOne',
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
