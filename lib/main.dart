import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuestionario_ejemplo/page/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cuestionario_ejemplo/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[400],
        accentColor: Colors.blueGrey,
      ),
      home: HomePage(),
      //aqui va loginPage()
    );
  }
}

// class MainPage extends StatefulWidget {
//   final String title;

//   const MainPage({@required this.title});

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   bool isUploaded = false;
//   @override
//   void initState() {
//     super.initState();

//     upload();
//   }

//   Future upload() async {
//     await Firebase.initializeApp();

//     final refUser = FirebaseFirestore.instance.collection('user').doc();
//     await refUser.set({'username': 'alan'});

//     setState(() {
//       isUploaded = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: Center(
//           child: Text(
//             isUploaded ? 'Cargando' : 'Cargado',
//             style: TextStyle(fontSize: 25),
//           ),
//         ),
//       );
// }
