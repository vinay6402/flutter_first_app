import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  int days = 30; //data declaration and initialization
  String name = "vinay";
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    final dummyList = List.generate(
        10,
        (index) => CatalogModel.items[
            0]); //list.generate will generate dummy list with input parameter count 20
    return Scaffold(
      //which contaion appbar,body, footer/drawer
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            //renders list view
            itemCount: dummyList.length, //list items count
            itemBuilder: (context, index) {
              return ItemWidget(item: dummyList[index]);
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
