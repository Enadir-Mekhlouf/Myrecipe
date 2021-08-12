import 'package:flutter/material.dart';
import 'package:myrecipe/screens/main_screen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar();

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int check = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: 65.0,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.lightBlue.shade50),
          //TODO: after finishing remove this border and try to make the button wrapped
        ),
        // shape: BoxShape.circle,
      ),
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.orange,

          onPressed: () {
            if (ModalRoute.of(context).settings.name != Mainscreen.id) {
              Navigator.pop(context);
            }
          },
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
          // elevation: 5.0,
        ),
      ),

      // the floating button inside bottom app bar and in the center

      // bottom app bar
    );
  }
}
