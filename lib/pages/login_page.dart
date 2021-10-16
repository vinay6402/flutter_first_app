// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey =
      GlobalKey<FormState>(); //key used to save username and password globally

  moveToHome() async {
    //custom fuction, which will navigate to home page
    if (_formKey.currentState!.validate()) {
      await Future.delayed(Duration(seconds: 1)); //waits are delay for 1 second go for nexr line
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

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
            child: Form(
              //form widget, which will help us to handle form validations
              key: _formKey, //form key
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
                    "Welcome $name",
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
                          validator: (value) { //fuction to valitdate input textfield or any other form elements
                            if (value!.isEmpty) {
                              return "Username name cannot be empty buddy!!";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //on every change made inside this input form
                            name = value;
                            setState(
                                () {}); //recall build fuction to rebuild the render to display updated values in widget
                          },
                        ),
                        TextFormField(
                          obscureText: true, //hide the password
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password name cannot be empty, Because your are not admin!";
                            } else if (value.length < 6) {
                              return "Password length should be more than 6 character";
                            }
                            return null;
                          },
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
                            moveToHome();
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))),
    );
  }
}
