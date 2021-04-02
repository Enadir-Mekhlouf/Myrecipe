import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

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
        // floating button (home icon)
        floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
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
        body: SafeArea(
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                      child: Text('Popular Recipes',
                          style: TextStyle(fontSize: 17.0)),
                    ),
                  ),
                ),
                //
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PopularRecipe("images/eggs.jpg"),
                      PopularRecipe("images/stb.jpeg"),
                      PopularRecipe("images/pancake.jpg"),
                    ],
                  ),
                ),
                Container(
                  child: SizedBox(
                    width: double.infinity,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                      child: Text('Most Viewed Recipes',
                          style: TextStyle(fontSize: 17.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PopularRecipe extends StatelessWidget {
  final String picture;
  const PopularRecipe(this.picture);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 170,
          width: 170,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(picture),
                fit: BoxFit.cover,
              ),
              //border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.all(
                const Radius.circular(15.0),
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 36,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[350].withOpacity(0.35),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Icon(Icons.bookmark_border_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 130,
                      child: Container(
                        child: Column(
                          children: [
                            Text("potato"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.ac_unit),
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            const Radius.circular(15.0),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// slide button
class NavigationButton extends StatelessWidget {
  final String label;
  final String picture;
  NavigationButton(this.label, this.picture);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      // ignore: deprecated_member_use
      child: FlatButton.icon(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.orange,
        onPressed: () {},
        icon: SvgPicture.asset(
          picture,
          height: 40.0,
          width: 40.0,
        ),
        label: Text(label),
      ),
    );
  }
}
