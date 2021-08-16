import 'package:flutter/material.dart';
import 'package:myrecipe/widgets/bottombar.dart';
import 'package:myrecipe/widgets/bottomnavbar.dart';
import 'package:dotted_border/dotted_border.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Icon(Icons.bookmark_add),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage("images/eggs.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'oats with mango slice \n and cream',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          height: 55.0,
                          width: 55.0,
                          color: Colors.yellow,
                          child: Row(
                            children: [
                              Icon(Icons.star_border_purple500),
                              Text('4.5'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage('images/vinz.jpg'),
                          ),
                          Column(
                            children: [
                              Text('vinz'),
                              Text('neutrition'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star_border_purple500_sharp),
                              Icon(Icons.star_border_purple500_sharp),
                              Icon(Icons.star_border_purple500_sharp),
                              Icon(Icons.star_border_purple500_sharp),
                              Icon(Icons.star_border_purple500_sharp),
                            ],
                          ),
                          Text('500 votes')
                        ],
                      ),
                    ],
                  ),
                  // added
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        child: Text('ingrediants'),
                      ),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        color: Colors.black,
                        strokeWidth: 0.5,
                        radius: Radius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          width: 500,
                          height: 100.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.green[50],
                                      ),
                                      Text('data'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.green[50],
                                      ),
                                      Text('data'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.green[50],
                                      ),
                                      Text('data'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.green[50],
                                      ),
                                      Text('data'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              const Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      //
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text('description'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
