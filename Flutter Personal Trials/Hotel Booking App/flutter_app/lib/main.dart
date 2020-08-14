import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

//use this to preview display on multiple devices
// void main() => runApp(DevicePreview(
//       builder: (context) => MaterialApp(
//         home: Home(),
//       ),
//       enabled: !kReleaseMode,
//     ));
void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color purple = Color(4284701663);
    Color seaBlue = Color(4291225343);
    Color lightBlack = Color(4282729797);

//build images
    Container _buildImages(String img) {
      return Container(
        height: 60,
        width: 70,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/$img",
            height: 100,
            // width: 50,
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    return Scaffold(
      // backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: Icon(
          Icons.sort,
          color: Colors.black,
          size: 40,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Find",
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "your stay",
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: seaBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Last Search",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: lightBlack),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: purple,
                          child: Icon(
                            Icons.chevron_right,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Washington, 12.07 - 12.07, 2 adults",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildImages("img1.jpg"),
                        _buildImages("img2.jfif"),
                        _buildImages("img3.jpg"),
                        _buildImages("img4.jpg"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 10,
                        // offset: Offset(8.0, 10.0),
                      ),
                    ]),
                // elevation: 10,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(9),
                // ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.location_on,
                            color: purple,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    TextStyle(color: lightBlack, fontSize: 10),
                              ),
                            ),
                            Text(
                              "London",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.card_travel,
                            color: purple,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Check in",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: 10),
                              ),
                            ),
                            Text(
                              "01.08.2020",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 1.0,
                            width: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Check out",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              "10.08.2020",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.people,
                            color: purple,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Persons",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              "1 adult",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                child: FlatButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Book())),
                  color: purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "Find Stay",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
