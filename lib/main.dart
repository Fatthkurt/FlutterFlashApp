import 'package:flash_app/homepage.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );

  }
  }
