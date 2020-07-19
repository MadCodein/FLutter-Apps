import 'package:flutter/material.dart';
// import 'ui/home.dart';
import 'ui/splashscreen.dart';

void main() {
  var title = "BRIM Church";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      // home: Home(title: title),
      home: SplashScreen(),
    ),
  );
}
