import 'package:flutter/material.dart';
import 'package:myrecipe/widgets/navbutton.dart';
import 'package:myrecipe/widgets/precipe.dart';
import 'package:myrecipe/widgets/bottombar.dart';
import 'package:myrecipe/widgets/bottomnavbar.dart';
import 'package:myrecipe/widgets/Appbar.dart';

class Mainscreen extends StatefulWidget {
  static String id = 'main_screen';

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO:appbar
      floatingActionButton: Bottombar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Bottomnavbar(),
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            // all container
            child: Container(
              color: Colors.white,
              // all column
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 250,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    labelText: 'find your today Recipe',
                                    border: OutlineInputBorder(
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NavigationButton('Breakfast', 'images/egg.svg'),
                        NavigationButton('Fast Food', 'images/burger.svg'),
                        NavigationButton('Japanese', 'images/noodles.svg'),
                      ],
                    ),
                  ),
                  //container in the body
                  Container(
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Text('Popular Recipes',
                            style: TextStyle(fontSize: 17.0)),
                      ),
                    ),
                  ),
                  //
                  Container(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PopularRecipe("images/eggs.jpg", "4.9",
                            "images/vinz.jpg", "Riya shaikh", "oats w"),
                        PopularRecipe("images/stb.jpeg", "4.5",
                            "images/vinz.jpg", "Robert jay", "oats "),
                        PopularRecipe("images/pancake.jpg", "4",
                            "images/vinz.jpg", "Nadir", "it is"),
                      ],
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Text('Most Viewed Recipes',
                            style: TextStyle(fontSize: 17.0)),
                      ),
                    ),
                  ),
                  //TODO : this container need to be modified
                  Container(
                    height: 222,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PopularRecipe("images/eggs.jpg", "4.9",
                            "images/vinz.jpg", "Riya shaikh", "oats w"),
                        PopularRecipe("images/stb.jpeg", "4.5",
                            "images/vinz.jpg", "Robert jay", "oats "),
                        PopularRecipe("images/pancake.jpg", "4",
                            "images/vinz.jpg", "Nadir", "it is"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
