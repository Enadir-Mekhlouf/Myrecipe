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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          child: Text(
                            'Hi User !',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                            child: RichText(
                          text: TextSpan(
                            text: 'make your own food, \n stay at ',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            children: [
                              TextSpan(
                                text: 'home',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 20),
                              )
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 250,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    labelText: 'find your today recipe',
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(
                                        const Radius.circular(5.0))),
                                child: Container(
                                    child: Icon(
                                  Icons.sort,
                                  size: 40,
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
