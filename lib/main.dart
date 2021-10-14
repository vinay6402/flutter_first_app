import 'package:flutter/material.dart'; // import this library

void main() {
  //used to entry by the flow control to the code
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // where all our widgets are called and write the structure
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("hi vinay"),
          ),
        ),
      ),
    );
  }
}
