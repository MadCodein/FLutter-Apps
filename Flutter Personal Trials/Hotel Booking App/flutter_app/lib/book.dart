import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color purple = Color(4284701663);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 10000,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      "assets/img6.jfif",
                      height: 100,
                      // width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 4,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black38,
                    radius: 4,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black38,
                    radius: 4,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Signature Townhouse",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "London Hyde Park",
                  style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10),
              child: Text(
                  "The romantic London Gards Hotel is the best way to experience London. Relax in rooms with flatscreen TVs, air conditioningand work desks.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 16),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(20),
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 13,
                      // offset: Offset(8.0, 10.0),
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    "assets/fire.jpg",
                    height: 30,
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rating 4.5",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "728 Reviews",
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.grey)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(top: 40),
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 10,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$450",
                          style: GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          "For 9 nights",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: FlatButton(
                        onPressed: () => Navigator.pop(context),
                        color: purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Book",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
