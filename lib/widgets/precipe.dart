import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularRecipe extends StatelessWidget {
  final String picture;
  final String note;
  final String iconp;
  final String namep;
  final String discription;

  const PopularRecipe(
      this.picture, this.note, this.iconp, this.namep, this.discription);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          width: 200,
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
                    height: 55,
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
                  height: 65,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 90,
                      width: 170,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(child: Text(discription)),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5.0),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(iconp),
                                    ),
                                    Text(namep),
                                    SizedBox(
                                      height: 30,
                                      width: 50,
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Icon(Icons.star_purple500_sharp,
                                                color: Colors.orange),
                                            Text(note),
                                          ],
                                        ),
                                        //
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
