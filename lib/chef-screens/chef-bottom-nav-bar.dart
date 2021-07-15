import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChefBottomNavBar extends StatelessWidget {
  const ChefBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 70,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/home.svg"),
                onPressed: () {},
              ),
              Text("Trang Chủ")
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/clipboard.svg"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/chef-history');
                },
              ),
              Text("Hoạt Động")
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/person.svg"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/user-profile');
                },
              ),
              Text("Tài Khoản")
            ],
          ),
        ],
      ),
    );
  }
}
