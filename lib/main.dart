import 'package:flutter/material.dart';
import 'package:flutte_apk_uts/loginpage.dart';

import 'loginpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UTS',
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}
