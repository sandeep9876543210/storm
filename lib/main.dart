import 'package:flutter/material.dart';
import 'Login_page.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>Login_page(),
    },
  ));
}


