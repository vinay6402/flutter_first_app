import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart'; // import this library

void main() {
  //used to entry by the flow control to the code
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // where all our widgets are called and write the structure
    return MaterialApp(home: HomePage());
  }
}
