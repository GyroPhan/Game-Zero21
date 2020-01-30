import 'package:flutter/material.dart';
import 'dart:math';

import 'Number_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Title 1",
      home: Scaffold(
          body: Number_2()
      ),
    );
  }
}

