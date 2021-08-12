import 'package:flutter/material.dart';

class Appbarw extends StatefulWidget {
  const Appbarw();

  @override
  _AppbarwState createState() => _AppbarwState();
}

class _AppbarwState extends State<Appbarw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //remove appbar shadow
        elevation: 0,
        toolbarHeight: 50.0,
        backgroundColor: Colors.white,
        //row icon and avatar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            GestureDetector(
              onTap: () {
                print('icon clicked');
              },
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('images/vinz.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
