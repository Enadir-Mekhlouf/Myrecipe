import 'package:flutter/material.dart';
import 'package:myrecipe/screens/savedpages.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar();

  @override
  _BottomnavbarState createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  IconData chanble = Icons.add_circle;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      //inside bottom app bar (row)
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(chanble),
              //
              onPressed: () {
                setState(() {
                  chanble = Icons.ac_unit_rounded;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.bookmark_outlined),
              onPressed: () {
                Navigator.pushNamed(context, SavedPages.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
