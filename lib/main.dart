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
          appBar: AppBar(
              //remove appbar shadow
              elevation: 0,
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
            // all container
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  // container of text containt
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          // container of first text
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
                          // container of second text
                          child: Container(
                              child: RichText(
                            text: TextSpan(
                              text: 'make your own food, \n stay at ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: 'home',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  //container of search bar and settings icon/button
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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
                                    fillColor: Colors.grey[100],
                                    labelText: 'find your today recipe',
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(15.0),
                                      ),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                                child: Container(
                                  child: Icon(
                                    Icons.settings,
                                    size: 50,
                                    color: Colors.grey[850],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 7.5),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.food_bank_rounded,
                                  size: 35,
                                ),
                                Text('pizza')
                              ],
                            ),
                          ),
                        ),
                        //
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 7.5),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.sports_tennis_outlined,
                                  size: 35,
                                ),
                                Text('tenniiiiiiiis')
                              ],
                            ),
                          ),
                        ),
                        //
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 7.5),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.ac_unit,
                                  size: 35,
                                ),
                                Text('Breakfast')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
