import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30; //data declaration and initialization
  String name = "vinay";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //which contaion appbar,body, footer/drawer
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: Text("hi $name,its $days'th day"),
        ),
      ),
      drawer: MyDrawer(), //calling my custom drawer "MyDrawer"
    );
  }
}
