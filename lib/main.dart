import 'package:flutter/material.dart';
import 'package:schoolassignment/screens/welcome.dart';
import 'package:dcdg/dcdg.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return welcome_screen();
  }
}
