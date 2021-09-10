import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:mymed/View/Initalsetup.dart';
import 'package:mymed/View/uniqueID.dart';
=======
import 'package:mymed/View/Reconcile.dart';
import 'package:get/get.dart';
>>>>>>> 4c6e1f8f8688cf34051b7f466441e844cbafc472

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter emo',
      theme: ThemeData(
<<<<<<< HEAD
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: UniqueID(),
=======
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ReconcilScreen(),
>>>>>>> 4c6e1f8f8688cf34051b7f466441e844cbafc472
    );
  }
}
