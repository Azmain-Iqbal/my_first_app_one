
import 'package:flutter/material.dart';
import 'package:my_first_app_one/view/homepage.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  const FlutterApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightBlue
      ),
      home: const HomePage(),
    );
  }

}
