import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_kit_flutter/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/pin.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title
            /*.copyWith(fontWeight: FontWeight.bold)*/,
        children: [
          TextSpan(
            text: "Quận 1",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
    actions: <Widget>[
    ],
  );
}
