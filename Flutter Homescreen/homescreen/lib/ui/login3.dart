import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:homescreen/ui/home.dart';
import 'package:homescreen/utils/logo.dart';
import 'package:homescreen/Animations/FadeAnimation.dart';

class LoginPageScreen extends StatefulWidget {
  @override
  _LoginPageScreenState createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              FadeAnimation(
                1.1,
                buildAvatarContainer(),
              ),
              FadeAnimation(
                1.2,
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
                  child: Text(
                    "Sweet!",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'ExpletusSans',
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
              FadeAnimation(
                1.3,
                Text(
                  "Login to continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Righteous',
                    color: Color(0xff606470),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: FadeAnimation(
                  1.4,
                  TextField(
                    controller: _emailController,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'WorkSans'),
                    decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Container(
                            width: 50,
                            child: Image.asset("images/ic_mail.png")),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xffCED0D2), width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(6)))),
                  ),
                ),
              ),
              FadeAnimation(
                1.5,
                TextField(
                  controller: _passController,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'WorkSans'),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Container(
                          width: 50, child: Image.asset("images/ic_phone.png")),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                  child: FadeAnimation(
                    1.6,
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff606470),
                        fontFamily: 'Righteous',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FadeAnimation(
                    1.7,
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      elevation: 5,
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'FredokaOne',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      color: Color(0xff3277D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: FadeAnimation(
                  1.5,
                  RichText(
                    text: TextSpan(
                        text: "New user? ",
                        style: TextStyle(
                            color: Color(0xff606470),
                            fontSize: 16,
                            fontFamily: 'ExpletusSans'),
                        children: <TextSpan>[
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: "Sign up for a new account",
                            style: TextStyle(
                                color: Color(0xff3277D8),
                                fontSize: 16,
                                fontFamily: 'Acme'),
                          ),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
