import 'package:flutter/material.dart';
import 'package:freelance_project/views/job_detail.dart';
import '../constants.dart';
import 'home.dart';
import 'package:freelance_project/models/company.dart';
// import 'home.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _filter = new TextEditingController();

  String _searchText = "";
  List filteredNames = companyList; // names filtered by search text
  List names = new List();

  _SearchPageState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = companyList;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  Widget _buildList() {
    if (_searchText.isNotEmpty) {
      List tempList = new List();
      for (int i = 0; i < filteredNames.length; i++) {
        if (filteredNames[i]
            .job
            .toLowerCase()
            .contains(_searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
    }
    return ListView.builder(
      itemCount: filteredNames.length,
      itemBuilder: (BuildContext context, int index) {
        var searchedJob = filteredNames[index];
        return new ListTile(
          title: Text(filteredNames[index].job),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JobDetail(
                  company: searchedJob,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSilver,
      appBar: AppBar(
        backgroundColor: kSilver,
        title: TextField(
          controller: _filter,
          autofocus: true,
          decoration: new InputDecoration(
              border: InputBorder.none,
              prefixIcon: new Icon(Icons.search),
              hintText: 'Search...'),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlack,
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          ),
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
          child: _buildList(),
        ),
      ),
    );
  }
}
