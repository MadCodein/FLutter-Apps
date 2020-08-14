import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/company.dart';
import 'job_detail.dart';
import '../widgets/recent_job_card.dart';

class AvailableJobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSilver,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: kBlack),
        centerTitle: true,
        backgroundColor: kSilver,
        title: Text(
          "Available Jobs",
          style: kPageTitleStyle,
        ),
        elevation: 0.0,
        // leading: Padding(
        //   padding: const EdgeInsets.only(
        //     left: 18.0,
        //     top: 12.0,
        //     bottom: 12.0,
        //     right: 12.0,
        //   ),
        // ),
      ),
      body: Container(
        child: Container(
          width: double.infinity,
          // margin: EdgeInsets.only(top: 50.0),
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: ListView.builder(
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
        ),
      ),
    );
  }
}
