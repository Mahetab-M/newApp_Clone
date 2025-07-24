import 'package:flutter/material.dart';
import 'package:newsapp_clone/views/Home_Page.dart';

void main() {
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}


