import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freelance_project/views/search.dart';
import 'authenticate.dart';
import '../widgets/navigation_drawer.dart';
import '../constants.dart';
import '../models/company.dart';
import '../views/job_detail.dart';
import '../widgets/company_card.dart';
import '../widgets/company_card2.dart';
import '../widgets/recent_job_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //-- Alert Message --//
    void _showAlertMessage() {
      var alert = new AlertDialog(
        title: Text(
          'Log out?',
          style: kTitleStyle,
        ),
        actions: <Widget>[
          FlatButton(
              child: const Text(
                'Yes',
                style: TextStyle(
                  fontSize: 14.0,
                  color: kBlack,
                ),
              ),
              onPressed: () => {
                    print("Signout Button Pressed"),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    )
                  }),
          FlatButton(
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontSize: 14.0,
                color: kBlack,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );

      showDialog(
          context: context,
          builder: (context) {
            return alert;
          });
    }

//-- Scaffold --//
    return Scaffold(
      backgroundColor: kSilver,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: kBlack),
        backgroundColor: kSilver,
        elevation: 0.0,
        // leading: Padding(
        //   padding: const EdgeInsets.only(
        //     left: 18.0,
        //     top: 12.0,
        //     bottom: 12.0,
        //     right: 12.0,
        //   ),
        //   child: SvgPicture.asset(
        //     "assets/drawer.svg",
        //     color: kBlack,
        //   ),
        // ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              _showAlertMessage();
            },
            child: Image.asset(
              'assets/signout.png',
              width: 25,
            ),
          ),
          SizedBox(width: 18.0)
        ],
      ),
      drawer: NavigationDrawer(),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25.0),
              Text(
                "Hi Jojo,\nFind a Freelancer\nFind your Dream Job",
                style: kPageTitleStyle,
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextField(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchPage(),
                            ),
                          ),
                          // controller: _filter,
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                            // icon: Icon(
                            //   Icons.search,
                            //   size: 25.0,
                            //   color: kBlack,
                            // ),
                            border: InputBorder.none,
                            hintText: "Search for job title",
                            hintStyle: kSubtitleStyle.copyWith(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 12.0),
                      decoration: BoxDecoration(
                        color: kBlack,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Icon(
                        FontAwesomeIcons.search,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.0),
              Text(
                "Popular Jobs",
                style: kTitleStyle,
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 190.0,
                child: ListView.builder(
                  itemCount: companyList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var company = companyList[index];
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JobDetail(
                                company: company,
                              ),
                            ),
                          );
                        },
                        // child: index == 0
                        //     ? CompanyCard(company: company)
                        //     : CompanyCard2(company: company),
                        child: CompanyCard(company: company)
                        //  CompanyCard2(company: company),
                        );
                  },
                ),
              ),
              SizedBox(height: 35.0),
              Text(
                "Recent Jobs",
                style: kTitleStyle,
              ),
              ListView.builder(
                itemCount: recentList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var recent = recentList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobDetail(
                            company: recent,
                          ),
                        ),
                      );
                    },
                    child: RecentJobCard(company: recent),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
