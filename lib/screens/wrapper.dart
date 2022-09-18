import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authenticate/authenticate.dart';
import 'package:flutter_application_1/screens/home/home.dart';

class wrapper extends StatelessWidget {
  //const wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //return either home or authenticate
    return Authenticate();
  }
}
