import 'package:flutter/material.dart';
import 'package:cuestionario_ejemplo/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[400],
        accentColor: Colors.blueGrey,
      ),
      home: LoginPage(),
    );
  }
}
