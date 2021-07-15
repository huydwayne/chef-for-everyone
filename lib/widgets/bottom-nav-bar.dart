import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
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
/*
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
*/
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
                  Navigator.pushReplacementNamed(context, '/your_booking_card');
                },
              ),
              Text("Đơn Hàng")
            ],
          ),
          // Column(
          //   children: [
          //     IconButton(
          //       icon: SvgPicture.asset("assets/icons/person.svg"),
          //       onPressed: () {
          //         Navigator.pushReplacementNamed(context, '/user-profile');
          //       },
          //     ),
          //     Text("Phản Hồi")
          //   ],
          // ),
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
