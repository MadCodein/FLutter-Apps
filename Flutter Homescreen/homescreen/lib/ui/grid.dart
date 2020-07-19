import 'package:flutter/material.dart';
import 'package:homescreen/Animations/FadeAnimation.dart';
import 'package:homescreen/ui/announcement.dart';
import 'package:homescreen/ui/video_home.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Sermons",
      subtitle: "June, 19 Wednesday",
      event: "200 Videos",
      img: "images/sermon.png");

  Items item2 = new Items(
    title: "Testimonials",
    subtitle: "Life Testimonies",
    event: "40 Items",
    img: "images/testimonials.png",
  );
  Items item3 = new Items(
    title: "Events",
    subtitle: "Live Events",
    event: "",
    img: "images/map.png",
  );
  Items item4 = new Items(
    title: "Announcement",
    subtitle: "Specials",
    event: "10 Messages",
    img: "images/announcement.png",
  );
  Items item5 = new Items(
    title: "Website",
    subtitle: "Church website",
    event: "",
    img: "images/website.png",
  );
  Items item6 = new Items(
    title: "Hymns",
    subtitle: "Christian Hymnals",
    event: "",
    img: "images/hymn.png",
  );
  Items item7 = new Items(
    title: "About Us",
    subtitle: "App Info",
    event: "",
    img: "images/info.png",
  );
  Items item8 = new Items(
    title: "Settings",
    subtitle: "Personalise your app",
    event: "",
    img: "images/setting.png",
  );
  @override
  Widget build(BuildContext context) {
    //-- Grid Tile routing method --//
    dynamic _navigator(String route) {
      switch (route) {
        case 'Sermons':
          return Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VideoHome()),
          );
          break;
        case 'Announcement':
          return Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Announcement()),
          );
          break;
        default:
      }
    }
    //-- Grid Tile routing method --//

    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8
    ];
    var color = 0xff2B2B52;
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: GridView.count(
            childAspectRatio: 1.0,
            padding: EdgeInsets.only(left: 16, right: 16, top: 26, bottom: 26),
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 18,
            children: myList.map((data) {
              return FadeAnimation(
                1.2,
                Card(
                  color: Color(color),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      print(data.title);
                      _navigator(data.title);
                    },
                    splashColor: Colors.deepOrange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          data.img,
                          width: 42,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          data.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'FredokaOne',
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          data.subtitle,
                          style: TextStyle(
                              color: Colors.white38,
                              fontSize: 10,
                              fontFamily: 'Righteous'),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          data.event,
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontFamily: 'Righteous',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList()),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
