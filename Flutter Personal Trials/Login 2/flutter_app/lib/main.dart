import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';

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
    final Color color = Color(4287980539);

    //build textfield
    Padding _buildTextField(String name, Icon icon, bool obscure) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          obscureText: obscure,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(4284365478),
            hintText: name,
            hintStyle:
                TextStyle(color: Colors.white54, fontWeight: FontWeight.bold),
            prefixIcon: icon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      );
    }

//build facebook and google buttons
    Container _buildButton(String imageUrl, String text) {
      return Container(
        margin: EdgeInsets.all(19),
        child: FlatButton(
          onPressed: () {},
          color: Colors.white,
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  "assets/$imageUrl",
                  height: 20,
                ),
              ),
              Container(
                height: 30,
                child: VerticalDivider(
                  color: Colors.blueGrey,
                  thickness: 1.0,
                  width: 30,
                ),
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: color),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LearnCode',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                SizedBox(height: 40),
                _buildTextField("Username",
                    Icon(Icons.person_outline, color: Colors.white), false),
                _buildTextField("Password",
                    Icon(Icons.lock_outline, color: Colors.white), true),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 23.0, bottom: 20),
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: Colors.white60, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  child: FlatButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text("Login", style: TextStyle(color: color)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(34.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "or",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildButton("facebook.png", "Continue with Facebook"),
                _buildButton("google.png", "Continue with Google"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
