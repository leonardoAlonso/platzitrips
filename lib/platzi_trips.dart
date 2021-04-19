import 'package:flutter/material.dart';
import 'package:platizitrips/profile/profile.dart';
import 'package:platizitrips/search.dart';
import 'places/home.dart';

class PlatziTrips extends StatefulWidget {
  PlatziTrips({Key key}) : super(key: key);

  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {

  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    Home(),
    SearchTrips(),
    Profile()
  ];

  void onTapTapped(int index) {

    setState(() {
      indexTap = index;
    });

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ]
        )
      ),
    );
  }
}