import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:freelance_project/constants.dart';
import 'package:freelance_project/views/home.dart';

class PostJob extends StatefulWidget {
  @override
  _PostJobState createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  //-- Alert Message --//
  void _showAlertMessage() {
    var alert = new AlertDialog(
      title: Icon(
        Icons.check,
        size: 100,
      ),
      content: Text(
        'Job Posted Successfully',
        style: kPageTitleStyle,
      ),
    );

    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSilver,
      body: Stack(
        children: [
          // buildBackgroundTopCircle(),
          buildBackgroundBottomCircle(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 40),
                child: Column(
                  children: [
                    buildAvatarContainer(),
                    Text("POST A JOB",
                        style: kPageTitleStyle.copyWith(
                            fontWeight: FontWeight.bold, height: 2)),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 3000),
                      curve: Curves.easeInOutBack,
//                      height: 400,
                      margin: EdgeInsets.only(top: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 1),
                          )
                        ],
                      ),
                      child: SingleChildScrollView(
                          child: buildSignInTextFieldSection()),
                    ),
                    buildPostButton()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildPostButton() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          RaisedButton(
            color: kBlack,
            elevation: 10,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 12),
            onPressed: () {
              _showAlertMessage();

              Timer(
                Duration(seconds: 2),
                () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
              );
            },
            child: Text("POST",
                style: kTitleStyle.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Column buildSignInTextFieldSection() {
    return Column(
      children: [
        buildTextField(
            "Category", "Web Development, Mobile Development etc", false, 1),
        SizedBox(height: 30),
        buildTextField("Title of Project", "freelance", false, 1),
        SizedBox(height: 30),
        buildTextField("Project Description",
            "This website should be able to view images...", false, 4),
        SizedBox(height: 30),
        buildNumberField("Budget", "\$10"),
        // SizedBox(height: 30),
      ],
    );
  }

  Container buildTextField(
      String labelText, String placeholder, bool isPassword, int maxLines) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: kSubtitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              obscureText: isPassword,
              maxLines: maxLines,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: placeholder,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]),
                ),
              ))
        ],
      ),
    );
  }

  Container buildNumberField(String labelText, String placeholder) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: kSubtitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: placeholder,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]),
                ),
              ))
        ],
      ),
    );
  }

  Container buildAvatarContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 130,
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(8.0, 10.0),
            ),
          ]),
      child: Center(
        child: Icon(Icons.work, color: kBlack, size: 100),
      ),
    );
  }

  Positioned buildBackgroundBottomCircle() {
    return Positioned(
      top: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.width,
      right: MediaQuery.of(context).size.width / 2,
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kBlackAccent.withOpacity(0.15),
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width,
            )),
      ),
    );
  }

  Positioned buildBackgroundTopCircle() {
    return Positioned(
      top: 8,
      child: Transform.translate(
        offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.3),
        child: Transform.scale(
          scale: 1.20,
          child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: kSilver,
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width,
                )),
          ),
        ),
      ),
    );
  }
}
