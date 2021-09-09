import 'package:flutter/material.dart';
import 'package:mymed/View/Initalsetup.dart';
import 'package:mymed/View/uniqueID.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter emo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: UniqueID(),
    );
  }
}
