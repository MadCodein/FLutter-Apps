import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'ui/home.dart';
import 'ui/splashscreen.dart';

void main() {
  var title = "BRIM Church";
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        // home: Home(title: title),
        home: SplashScreen(),
      ),
    );
  });
}
