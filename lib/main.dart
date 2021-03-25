import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  get bottomAppBarContents => null;
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
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: bottomAppBarContents,
        ),
        floatingActionButton: FloatingActionButton(onPressed: null),
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
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Popular Recipes',
                          style: TextStyle(fontSize: 17.0)),
                    ),
                  ),
                ),
                //
                Container(
                  height: 170.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PopularRecipe("images/eggs.jpg"),
                      PopularRecipe("images/stb.jpeg"),
                      PopularRecipe("images/pancake.jpg"),
                    ],
                  ),
                )
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
    return Container(
        child: SizedBox(
      height: 170,
      width: 170,
      child: Container(
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Icon(Icons.bookmark_border_outlined),
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(picture),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.all(
            const Radius.circular(15.0),
          ),
        ),
      ),
    ));
  }
}

class NavigationButton extends StatelessWidget {
  final String label;
  final String picture;
  NavigationButton(this.label, this.picture);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.5),
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
