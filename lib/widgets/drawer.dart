import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageurl =
      "https://scontent.fblr20-1.fna.fbcdn.net/v/t1.18169-9/15665574_709942075829950_1384237188220848083_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Pqj7KVZOvTQAX8MXOSi&tn=-CqWERQ8_oHKHpI8&_nc_ht=scontent.fblr20-1.fna&oh=7c73478e6870aa89b2a578a625d08e1f&oe=61914802";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //return drawer
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Vinay C Patil",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("vinay6402@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email me",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
