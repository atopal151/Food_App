import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constant.dart';

AppBar detailsAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    /*leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {},
    ),*/

    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/share.svg"),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/more.svg"),
        onPressed: () {},
      ),
    ],
  );
}
