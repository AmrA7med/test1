import 'package:flutter/material.dart';
import 'package:bmicalculator1/Home.dart';

void main () =>  runApp(const MyApp());




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff090E21),
        textTheme:  TextTheme(bodySmall: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(
          color: Color(0xff090E21),
        ),
      ),
    );
  }
}

