import 'package:flutter/material.dart';
import 'package:homescreen/Animations/FadeAnimation.dart';
import 'package:homescreen/ui/login2.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromRGBO(3, 9, 23, 1),
        backgroundColor: Colors.grey.shade200,
        // use gesture detector here to scroll textfield into view when clicked
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            //reverse: true & .reserved.toList() can be added to help scroll textfield into view
            children: <Widget>[
              SizedBox(height: 90),
              CustomLoginForm(),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}

//Login Data
class _LoginData {
  String name = "";
  String password = "";
}

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formKey = GlobalKey<FormState>();

  _LoginData _data = new _LoginData();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 20, right: 20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FadeAnimation(
            1.2,
            Icon(Icons.account_circle, color: Colors.blue, size: 150),
            // Text(
            //   "Login",
            //   style: GoogleFonts.openSans(
            //     textStyle: TextStyle(
            //         color: Colors.deepOrange,
            //         fontSize: 40,
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
          ),
          SizedBox(height: 30),
          FadeAnimation(
            1.5,
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.3)),
                        hintStyle:
                            TextStyle(color: Colors.grey.withOpacity(.8)),
                        hintText: "Email",
                      ),
                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Name Field is Required!";
                        } else {
                          _data.name = value;
                          print("Name: ${_data.name}");
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.3)),
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(.8)),
                          hintText: "Password",
                        ),
                        // ignore: missing_return
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Password Field is Required!";
                          } else {
                            _data.password = value;
                            print("Password: ${_data.password}");
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          FadeAnimation(
            1.8,
            Container(
              alignment: Alignment.topRight,
              child: RaisedButton(
                color: Colors.blue,
                padding: EdgeInsets.all(15),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.5)),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    setState(() {
                      _data.name = _data.name;
                    });

                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Login Successful"),
                      ),
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUI(),
                      ),
                    );
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'FredokaOne',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
