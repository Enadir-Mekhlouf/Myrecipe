import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          //backgroundColor: Colors.black45,
          appBar: AppBar(
              toolbarHeight: 50.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Row(
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 260.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('icon clicked');
                    },
                    child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/vinz.jpg')),
                  )
                ],
              )),
          body: SafeArea(
            child: Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.brown,
                          child: Text(
                            'Hi User !',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                            color: Colors.indigo,
                            child: RichText(
                              text: TextSpan(
                                text: 'make your own food, \n stay at ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                children: [
                                  TextSpan(
                                    text: 'home',
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 20),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.search),
                              Container(
                                width: 200,
                                child: TextFormField(
                                  decoration:
                                      InputDecoration(labelText: 'search here'),
                                ),
                              ),
                              Container(
                                child: Icon(Icons.filter_1),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
