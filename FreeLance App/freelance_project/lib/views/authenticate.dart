import 'package:flutter/material.dart';
import 'package:freelance_project/constants.dart';
import 'package:freelance_project/views/home.dart';

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
              SizedBox(height: 65),
              CustomLoginForm(),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}

//Login Data
// class _LoginData {
//   String name = "";
//   String password = "";
// }

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  // final _formKey = GlobalKey<FormState>();

  // _LoginData _data = new _LoginData();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 20, right: 20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//          Image.asset(
//            'assets/drawers.jpg',
//            width: 200,
//            height: 180,
//          ),
          Container(
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
              child: Icon(Icons.work, color: kBlack, size: 100),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "ZetaTech FreeLance",
            style: kPageTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: kTitleStyle,
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Container(
                        width: 50,
                        child: Icon(
                          Icons.account_box,
                          color: kBlack,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
//                child: TextField(
//                  decoration: new InputDecoration(
//                    prefixIcon: Icon(
//                      Icons.account_box,
//                      color: Colors.blue,
//                    ),
//                    border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(12.3)),
//                    hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
//                    hintText: "Email",
//                  ),
//                  // ignore: missing_return
//                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: kTitleStyle,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Container(
                        width: 50,
                        child: Icon(
                          Icons.lock,
                          color: kBlack,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: kBlack,
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
//                child: TextField(
//                  obscureText: true,
//                  decoration: InputDecoration(
//                    prefixIcon: Icon(
//                      Icons.lock,
//                      color: Colors.blue,
//                    ),
//                    suffixIcon: Icon(
//                      Icons.visibility,
//                      color: Colors.blue,
//                    ),
//                    border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(12.3)),
//                    hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
//                    hintText: "Password",
//                  ),
//                  // ignore: missing_return
//                ),
              ),
            ],
          ),
          Container(
            constraints: BoxConstraints.loose(Size(double.infinity, 30)),
            alignment: AlignmentDirectional.centerEnd,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff606470),
                  fontFamily: 'Righteous',
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            alignment: Alignment.topRight,
            child: RaisedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home())),
              color: kBlack,
              padding: EdgeInsets.all(15),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.5)),
              child: Text("Login",
                  style: kTitleStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
