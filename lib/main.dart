import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:platizitrips/platzi_trips.dart';
import 'package:platizitrips/platzi_trips_cupertino.dart';
import 'package:flutter/services.dart';
import 'package:platizitrips/test_widget.dart';

class Routes {
    static Route<dynamic> generateRoute(RouteSettings settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(
            builder: (context) => PlatziTrips(),
          );
        break;
        case '/second':
          return MaterialPageRoute(
            builder: (context) => TestWidget(),
          );
        break;
        default:
          return MaterialPageRoute(
            builder: (context) => PlatziTrips(),
          );
      }
    }
}

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platzi trips',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
      // home: PlatziTripsCupertino(),
      home: PlatziTrips(),
    );
  }
}
