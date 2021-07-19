import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
