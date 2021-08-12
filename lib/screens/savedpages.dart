import 'package:flutter/material.dart';
import 'package:myrecipe/widgets/bottombar.dart';
import 'package:myrecipe/widgets/bottomnavbar.dart';

class SavedPages extends StatefulWidget {
  static String id = 'savedpages';

  @override
  _SavedPagesState createState() => _SavedPagesState();
}

class _SavedPagesState extends State<SavedPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Bottombar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}
