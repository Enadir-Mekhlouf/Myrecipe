import 'package:flutter/material.dart';
import 'package:myrecipe/screens/main_screen.dart';

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
      home: Scaffold(
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
        // floating button (home icon)
        floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.lightBlue.shade50),
            ),
            // shape: BoxShape.circle,
          ),
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.orange,

              onPressed: () {},
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
              // elevation: 5.0,
            ),
          ),
        ),
        // the floating button inside bottom app bar and in the center
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottom app bar
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          //inside bottom app bar (row)
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_outlined),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        //body
        body: Mainscreen(),
      ),
    );
  }
}
