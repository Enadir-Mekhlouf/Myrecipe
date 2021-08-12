import 'package:flutter/material.dart';
import 'package:myrecipe/screens/main_screen.dart';
import 'package:myrecipe/screens/savedpages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remove debug banner
      debugShowCheckedModeBanner: false,

      initialRoute: Mainscreen.id,
      routes: {
        Mainscreen.id: (context) => Mainscreen(),
        SavedPages.id: (context) => SavedPages(),
      },
    );
  }
}
