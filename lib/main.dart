import 'package:flutter/material.dart';
import 'package:my_first_app_one/view/homepage.dart';
import 'package:my_first_app_one/model/post_model.dart';

void main() {
  runApp(FlutterApp());
}

// ignore: use_key_in_widget_constructors
class FlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const HomePage(),
    );
  }
}
