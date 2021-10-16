import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart'; // import this library
import 'package:flutter_application_1/pages/reg_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //used to entry by the flow control to the code
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // where all our widgets are called and write the structure
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug strip at top right corner will be disapperaed if this flag is false
      themeMode: ThemeMode.light, //use strict theme mode
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.grey), //data for dark theme
      initialRoute: MyRoutes.homeRoute, //routes to the page on inital open of app
      routes: {
        //path declare for routing the navigationflow
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
