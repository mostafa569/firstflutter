import 'package:flutter/material.dart';
import 'package:untitled/Loginpage.dart';
import 'package:untitled/homepage.dart';
import 'register.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'homep':(context) =>HomePage(),
    },
  ));
}