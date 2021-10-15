// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //header or app bar at top
        backgroundColor: Color.fromARGB(255, 108, 99, 255),
        foregroundColor: Colors.white, //title and button color
        shadowColor: Colors.red,
        centerTitle: true,
        title: Text(
          "TechGenie",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: (Material(
          //use material to render
          color: Colors.white,
          child: SingleChildScrollView(
            //to avoid overflow error due to asset size and keyboard entry
            child: Column(
              //we use colomn to append all widgets vertically
              children: [
                //children contains all widget indside column
                Image.asset(
                  //using image
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20), //space btwn widget
                Text(
                  "Welcome to TechGenie",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 108, 99, 255)),
                ),
                SizedBox(height: 10),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Padding(
                  //pad the content as per our need
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        //input text form field
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                      ),
                      TextFormField(
                        obscureText: true, //hide the password
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        //button to submit
                        child: Text("Login"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 108, 99, 255)),
                        ),
                        onPressed: () {
                          //function to run onpress the button
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
