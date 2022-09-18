import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/models/myuser.dart';
//import 'package:flutter_application_1/'

//import 'C:\Users\KORAK SENGUPTA\Documents\flutterdev\flutter\packages\flutter\lib\material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: wrapper());
  }
}
