import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

//use this to preview display on multiple devices
void main() => runApp(DevicePreview(
      builder: (context) => MaterialApp(
        home: Home(),
      ),
      enabled: !kReleaseMode,
    ));
// void main() => runApp(
//       MaterialApp(home: Home()),
//     );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TextField
    TextField inputText(String name, Icon icon, bool obscureText) {
      return TextField(
        obscureText: obscureText,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(4282666695),
          labelText: name,
          labelStyle: GoogleFonts.josefinSans(
            textStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          prefixIcon: icon,
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(4294761384), width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(4294761384), width: 1.0),
          ),
        ),
      );
    }

//alert dialog
    void _showAlert() {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text(
                "Login Successful",
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      color: Color(4281151174),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          });
      Timer(Duration(seconds: 5), () => Navigator.pop(context));
    }

    return Scaffold(
      backgroundColor: Color(4281151174),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              // shrinkWrap: true,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // SizedBox(height: 100),
                Text(
                  "Hello again",
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Log in with your email and password",
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                inputText(
                    "Email",
                    Icon(
                      Icons.email,
                      color: Color(4290620309),
                    ),
                    false),
                SizedBox(height: 20),
                inputText(
                    "Password",
                    Icon(
                      Icons.lock,
                      color: Color(4290620309),
                    ),
                    true),
                SizedBox(height: 20),
                const Text(
                  "Forgot Your Password?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(height: 30),
                Container(
                  height: 60,
                  child: RaisedButton(
                    onPressed: () => _showAlert(),
                    color: Color(4290620309),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                          color: Color(4281151174),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      'Sign up',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                          color: Color(4290620309),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
