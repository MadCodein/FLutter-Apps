import 'package:flutter/material.dart';
import '../constants.dart';
import '../views/available_jobs.dart';
import '../views/post_job.dart';

class NavigationDrawer extends StatelessWidget {
  //-- Drawer Header --//
  Widget createDrawerHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/drawers.jpg'))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("ZetaTech FreeLance",
                  style:
                      kTitleStyle.copyWith(fontSize: 25, color: Colors.white))),
        ],
      ),
    );
  }

//-- Body Section --//
  Widget createDrawerBodyItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: kTitleStyle,
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(icon: Icons.account_circle, text: 'Profile'),
          createDrawerBodyItem(
            icon: Icons.event_available,
            text: 'Available Jobs',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvailableJobs(),
                ),
              );
            },
          ),
          createDrawerBodyItem(
            icon: Icons.event_note,
            text: 'Post a Job',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostJob(),
                ),
              );
            },
          ),
          Divider(color: kBlack),
          createDrawerBodyItem(
              icon: Icons.notifications_active, text: 'Notifications'),
          createDrawerBodyItem(icon: Icons.contact_phone, text: 'Contact Info'),
          Padding(
            padding: const EdgeInsets.only(top: 230.0, left: 150),
            child: ListTile(
              title: Text('App version 1.0.0'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
