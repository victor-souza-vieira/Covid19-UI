import 'package:Covid19/screens/intro_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
    );
  }
}
