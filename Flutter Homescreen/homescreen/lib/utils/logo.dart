import 'package:flutter/material.dart';

Container buildAvatarContainer() {
  return Container(
    margin: EdgeInsets.only(top: 70),
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
      child: Image.asset(
        'images/fire.png',
        width: 180,
        height: 180,
      ),
    ),
  );
}
