import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myapp",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
