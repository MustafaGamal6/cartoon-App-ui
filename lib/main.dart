import 'package:cartonapp/screens/Home.dart';
import 'package:cartonapp/screens/detailpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cartoonapp',
      home: Home(),
      routes: {
        'Home' : (context)=>Home(),
        'Detailpage':(context)=>Detail()
      },
    ));
