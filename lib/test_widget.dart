import 'package:flutter/material.dart';
import 'cupertino_navigation_bar.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavigationBar(),
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go back")
          )
        ),
      ),
    );
  }

}