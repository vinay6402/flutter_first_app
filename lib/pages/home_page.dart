import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30; //data declaration and initialization
  String name = "vinay";
  @override
  Widget build(BuildContext context) {
    return Scaffold( //which contaion appbar,body, footer/drawer
      appBar: AppBar(
        title: Text("Demo App Buddy"),
      ),
      body: Center(
        child: Container(
          child: Text("hi $name,its $days'th day"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
