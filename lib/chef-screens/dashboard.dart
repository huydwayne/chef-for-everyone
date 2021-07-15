// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// /*final Color backgroundColor = Color(0xFF4A4A58);*/
//
// class MenuDashboardPage extends StatefulWidget {
//   @override
//   _MenuDashboardPageState createState() => _MenuDashboardPageState();
// }
//
// class _MenuDashboardPageState extends State<MenuDashboardPage> with SingleTickerProviderStateMixin {
//   bool isCollapsed = true;
//   double screenWidth, screenHeight;
//   final Duration duration = const Duration(milliseconds: 300);
//   AnimationController _controller;
//   Animation<double> _scaleAnimation;
//   Animation<double> _menuScaleAnimation;
//   Animation<Offset> _slideAnimation;
//
//   bool status = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: duration);
//     _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
//     _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
//     _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     screenHeight = size.height;
//     screenWidth = size.width;
//
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: Stack(
//         children: <Widget>[
//           menu(context),
//           dashboard(context),
//         ],
//       ),
//     );
//   }
//
//   Widget menu(context) {
//     return SlideTransition(
//       position: _slideAnimation,
//       child: ScaleTransition(
//         scale: _menuScaleAnimation,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 16.0),
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//
//                 Text("Trang chủ", style: TextStyle(color: Colors.black, fontSize: 22)),
//
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacementNamed(context, '/chef-profile');
//                   },
//                   child: Text("Tài khoản",
//                       style: TextStyle(color: Colors.white, fontSize: 22)),
//                 ),
//                 // SizedBox(height: 10),
//                 // Text("Tiền thưởng",
//                 //     style: TextStyle(color: Colors.white, fontSize: 22)),
//
//                 SizedBox(height: 10),
//                 TextButton(
//                   onPressed: () {
//                     //Navigator.pushReplacementNamed(context, '/chef-profile');
//                   },
//                   child: Text("Lịch sử",
//                       style: TextStyle(color: Colors.white, fontSize: 22)),
//                 ),
//                 SizedBox(height: 10),
//
//                 Text("Lịch sử", style: TextStyle(color: Colors.black, fontSize: 22)),
//                 SizedBox(height: 10),
//                 Text("Ví", style: TextStyle(color: Colors.black, fontSize: 22)),
//                 SizedBox(height: 10),
//                 Text("Thông báo", style: TextStyle(color: Colors.black, fontSize: 22)),
//                 SizedBox(height: 10),
//                 Text("Đặt lịch nhận phục vụ", style: TextStyle(color: Colors.black, fontSize: 22)),
//
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacementNamed(context, '/chef-wallet');
//                   },
//                   child: Text("Ví",
//                       style: TextStyle(color: Colors.white, fontSize: 22)),
//                 ),
//                 SizedBox(height: 10),
//                 Text("Thông báo",
//                     style: TextStyle(color: Colors.white, fontSize: 22)),
//                 SizedBox(height: 10),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacementNamed(
//                         context, '/chef-setting-time');
//                   },
//                   child: Text("Đặt lịch nhận phục vụ",
//                       style: TextStyle(color: Colors.white, fontSize: 22)),
//                 )
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget dashboard(context) {
//     return AnimatedPositioned(
//       duration: duration,
//       top: 0,
//       bottom: 0,
//       left: isCollapsed ? 0 : 0.6 * screenWidth,
//       right: isCollapsed ? 0 : -0.2 * screenWidth,
//       child: ScaleTransition(
//         scale: _scaleAnimation,
//         child: Material(
//           animationDuration: duration,
//           borderRadius: BorderRadius.all(Radius.circular(40)),
//           elevation: 8,
//           color: Colors.black12,
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             physics: ClampingScrollPhysics(),
//             child: Container(
//               padding: const EdgeInsets.only(left: 10, right: 10, top: 48),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       InkWell(
//                         child: Icon(Icons.menu, color: Colors.white),
//                         onTap: () {
//                           setState(() {
//                             if (isCollapsed)
//                               _controller.forward();
//                             else
//                               _controller.reverse();
//
//                             isCollapsed = !isCollapsed;
//                           });
//                         },
//                       ),
//
//                       Text("                    Nhận Đơn", style: TextStyle(fontSize: 24, color: Colors.black)),
//                       Container(
//                       child: Switch(
//                         activeColor: Colors.green,
//                         value: status,
//                         onChanged: (value) {
//                           print("VALUE : $value");
//                           setState(() {
//                             status = value;
//                           });
//                         },
//                       ),
//                       ),
//                       IconButton(
//                           icon: Text("Back", style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 14),),
//                         onPressed: () {
//                           Navigator.pushReplacementNamed(
//                               context, '/user-profile');
//
//                           Text("                      Nhận Đơn",
//                               style: TextStyle(
//                                   fontSize: 24, color: Colors.white));
//                           Container(
//                             child: Switch(
//                               activeColor: Colors.greenAccent,
//                               value: status,
//                               onChanged: (value) {
//                                 print("VALUE : $value");
//                                 setState(() {
//                                   status = value;
//                                 });
//                               },
//                             ),
//                           );
//                           IconButton(
//                             icon: Text(
//                               "Back",
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 14),
//                             ),
//                             onPressed: () {
//                               Navigator.pushReplacementNamed(
//                                   context, '/user-profile');
//                             },
//                           ),
//     ],
//                   ),
//                   SizedBox(height: 0),
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white54, width: 1.5),
//                       color: Colors.white.withOpacity(0.3),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
//                     child: Text(
//                       'Đơn Đang Chờ Xác Nhận',
//                       style: TextStyle(color: Colors.black, fontSize: 20),
//                     ),
//                   ),
// //Đơn đang chờ xác nhận
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white54, width: 1.5),
//                       color: Colors.amber.withOpacity(0.3),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                     margin: EdgeInsets.fromLTRB(5, 8, 5, 5),
//                     //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
//                     child: Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             //color: Colors.orange,
//                             padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
//                             // margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 100,
//                             height: 120,
//                             child: Image.network(
//                               'https://d1nhio0ox7pgb.cloudfront.net/_img/o_collection_png/green_dark_grey/512x512/plain/user.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             //color: Colors.green,
//
//                             padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
//                             //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 275,
//                             //height: 100,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               //mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
//                                   padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                                   //color: Colors.blueAccent,
//                                   height: 20,
//                                   width: 150,
//                                   child: Row(
//                                     //mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Icon(
//                                         Icons.calendar_today_outlined,
//                                         size: 18,
//                                       ),
//                                       SizedBox(
//                                         width: 2,
//                                       ),
//                                       Text(
//                                         'Thứ 5: 19-07-2021',
//                                         style: TextStyle(color: Colors.blue),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(0, 2, 0, 5),
//                                   padding: EdgeInsets.fromLTRB(7, 5, 0, 0),
//                                   alignment: Alignment.centerLeft,
//                                   //color: Colors.red,
//                                   height: 20,
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.access_time_rounded,
//                                         size: 18,
//                                       ),
//                                       SizedBox(
//                                         width: 2,
//                                       ),
//                                       Text(
//                                         '19h00 đến 21h00',
//                                         style: TextStyle(color: Colors.blue),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
//                                   padding: EdgeInsets.fromLTRB(8.5, 5, 0, 0),
//                                   child: Text(
//                                     'Tổng Đơn: 850.000đ',
//                                     style: TextStyle(
//                                         color: Colors.red, fontSize: 18),
//                                   ),
//                                 ),
//                                 Container(
//                                   alignment: Alignment.bottomRight,
//                                   height: 35,
//                                   margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
//                                   // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                   //color: Colors.grey,
//                                   child: TextButton(
//                                     child: Text(
//                                       'Chi Tiết Đơn',
//                                       style: TextStyle(
//                                           color: Colors.orange,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15),
//                                     ),
//                                     onPressed: () {
//                                       Navigator.pushReplacementNamed(
//                                           context, '/chef-waited-order-detail');
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
//                     child: Text(
//                       'Lịch Hẹn Hiện Tại',
//                       style: TextStyle(color: Colors.black, fontSize: 20),
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white54, width: 1.5),
//                       color: Colors.amber.withOpacity(0.3),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                     margin: EdgeInsets.fromLTRB(5, 8, 5, 5),
//                     //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
//                     child: Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             //color: Colors.orange,
//                             padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
//                             // margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 100,
//                             height: 100,
//
//                             child: Image.network(
//                               'https://miro.medium.com/max/1200/1*pHb0M9z_UMhO22HlaOl2zw.jpeg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             //color: Colors.green,
//
//                             padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
//                             //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 275,
//                             //height: 100,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               //mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
//                                   padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                                   //color: Colors.blueAccent,
//                                   height: 20,
//                                   width: 280,
//                                   child: Row(
//                                     //mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Icon(
//                                         Icons.calendar_today_outlined,
//                                         size: 18,
//                                       ),
//                                       SizedBox(
//                                         width: 2,
//                                       ),
//                                       Text('Thứ 5: 19-07-2021'),
//                                       SizedBox(
//                                         width: 55,
//                                       ),
//                                       Text(
//                                         'Đang Chờ',
//                                         style: TextStyle(
//                                             color: Colors.green, fontSize: 15),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
//                                   padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
//                                   alignment: Alignment.centerLeft,
//                                   //color: Colors.red,
//                                   height: 20,
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.access_time_rounded,
//                                         size: 18,
//                                       ),
//                                       SizedBox(
//                                         width: 2,
//                                       ),
//                                       Text('19h00 đến 21h00')
//                                     ],
//                                   ),
//                                 ),
//
//                                 Container(
//                                   alignment: Alignment.bottomRight,
//                                   height: 35,
//                                   margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
//                                   // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                   //color: Colors.grey,
//                                   child: TextButton(
//                                     child: Text(
//                                       'Chi Tiết Đơn',
//                                       style: TextStyle(
//                                           color: Colors.orange,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15),
//
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     IconButton(
//                                       icon: Icon(Icons.mobile_screen_share),
//                                       onPressed: () {},
//                                     ),
//                                     IconButton(
//                                       icon: Icon(Icons.chat),
//                                       onPressed: () {},
//                                     ),
//                                     IconButton(
//                                       icon: Icon(Icons.list),
//                                       onPressed: () {
//                                         Navigator.pushReplacementNamed(context,
//                                             '/chef-user-accepted-detail');
//                                       },
//
//                                     ),
//                                     onPressed: () {
//                                       Navigator.pushReplacementNamed(context,
//                                           '/chef-user-accepted-detail');
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white54, width: 1.5),
//                       color: Colors.amber.withOpacity(0.3),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                     margin: EdgeInsets.fromLTRB(5, 8, 5, 5),
//                     //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
//                     child: Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             //color: Colors.orange,
//                             padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
//                             // margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 100,
//                             height: 100,
//
//                             child: Image.network(
//                               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgFZRVUPoyUZc4Q04KXSFFdm4VLyV1eZEQKA&usqp=CAU',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             //color: Colors.green,
//
//                             padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
//                             //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 275,
//                             //height: 100,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               //mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
//                                   padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                                   // color: Colors.blueAccent,
//                                   height: 20,
//                                   width: 280,
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.calendar_today_outlined,
//                                         size: 18,
//                                       ),
//                                       SizedBox(
//                                         width: 2,
//                                       ),
//                                       Text('Thứ 7: 21-07-2021'),
//                                       SizedBox(
//                                         width: 55,
//                                       ),
//                                       Text(
//                                         'Đang Chờ',
//                                         style: TextStyle(
//                                             color: Colors.green, fontSize: 15),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
//                                   padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
//                                   alignment: Alignment.centerLeft,
//                                   //color: Colors.red,
//                                   height: 20,
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.access_time_rounded,
//                                         size: 18,
//                                       ),
//                                       SizedBox(
//                                         width: 2,
//                                       ),
//                                       Text('19h00 đến 21h00')
//                                     ],
//                                   ),
//                                 ),
//
//                                 Container(
//                                   alignment: Alignment.bottomRight,
//                                   height: 35,
//                                   margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
//                                   // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                   //color: Colors.grey,
//                                   child: TextButton(
//                                     child: Text(
//                                       'Chi Tiết Đơn',
//                                       style: TextStyle(
//                                           color: Colors.orange,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15),
//
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     IconButton(
//                                       icon: Icon(Icons.mobile_screen_share),
//                                       onPressed: () {},
//                                     ),
//                                     IconButton(
//                                       icon: Icon(Icons.chat),
//                                       onPressed: () {},
//                                     ),
//                                     IconButton(
//                                       icon: Icon(Icons.list),
//                                       onPressed: () {
//                                         Navigator.pushReplacementNamed(context,
//                                             '/chef-user-accepted-detail');
//                                       },
//
//                                     ),
//                                     onPressed: () {
//                                       Navigator.pushReplacementNamed(context,
//                                           '/chef-user-accepted-detail');
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
//                     child: TextButton(
//                       child: Text('Đặt lịch'),
//                       onPressed: () {
//                         Navigator.pushReplacementNamed(
//                             context, '/chef-setting-time');
//                       },
//                     ),
//                   ),
//
//                   Container(
//                     margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
//                     child: TextButton(
//                       child: Text('Profile'),
//                       onPressed: () {
//                         Navigator.pushReplacementNamed(
//                             context, '/chef-profile');
//                       },
//                     ),
//                   ),
//
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white54, width: 1.5),
//                       color: Colors.black.withOpacity(0.3),
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20),
//                       ),
//                     ),
//                     height: 200,
//                     // color: Colors.green,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                                 child: Text(
//                                   'Số Đơn Tháng Này',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.blue),
//                                 )),
//                             Container(
//                               child: Text(
//                                 '5',
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                                 child: Text(
//                                   'Đánh Giá',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.blue),
//                                 )),
//                             Container(
//                               height: 50,
//                               child: Text(
//                                 '4.5',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.orange),
//                               ),
//                             )
//                           ],
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                                 child: Text(
//                                   'Ví Tài Khoản',
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.blue),
//                                 )),
//                             Container(
//                                 child: Text(
//                                   '900.000 VND',
//                                   style: TextStyle(
//                                       fontSize: 18, fontWeight: FontWeight.bold),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*final Color backgroundColor = Color(0xFF4A4A58);*/

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  bool status = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/chef-profile');
                  },
                  child: Text("Tài khoản",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                // SizedBox(height: 10),
                // Text("Tiền thưởng",
                //     style: TextStyle(color: Colors.white, fontSize: 22)),

                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/chef-history');
                  },
                  child: Text("Lịch sử",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),

                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/chef-wallet');
                  },
                  child: Text("Ví Tài Khoản",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    //     context, '/chef-setting-time');
                  },
                  child: Text("Thông báo",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, '/chef-setting-time');
                  },
                  child: Text("Đặt lịch nhận phục vụ",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.2 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: CupertinoColors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu, color: Colors.black),
                        onTap: () {
                          setState(() {
                            if (isCollapsed)
                              _controller.forward();
                            else
                              _controller.reverse();

                            isCollapsed = !isCollapsed;
                          });
                        },
                      ),
                      Text("                    Nhận Đơn",
                          style: TextStyle(fontSize: 24, color: Colors.black)),
                      Container(
                        child: Switch(
                          activeColor: Colors.green,
                          value: status,
                          onChanged: (value) {
                            print("VALUE : $value");
                            setState(() {
                              status = value;
                            });
                          },
                        ),
                      ),
                      IconButton(
                        icon: Text(
                          "Back",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/user-profile');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(
                      'Đơn Đang Chờ Xác Nhận',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
//Đơn đang chờ xác nhận
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.lightGreenAccent.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(5, 8, 5, 5),
                    //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.orange,
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                            // margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 100,
                            height: 120,
                            child: Image.network(
                              'https://d1nhio0ox7pgb.cloudfront.net/_img/o_collection_png/green_dark_grey/512x512/plain/user.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            //color: Colors.green,

                            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 275,
                            //height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  //color: Colors.blueAccent,
                                  height: 20,
                                  width: 150,
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Thứ 5: 19-07-2021',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 5),
                                  padding: EdgeInsets.fromLTRB(7, 5, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  //color: Colors.red,
                                  height: 20,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        '19h00 đến 21h00',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  padding: EdgeInsets.fromLTRB(8.5, 5, 0, 0),
                                  child: Text(
                                    'Tổng Đơn: 850.000đ',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  height: 35,
                                  margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  //color: Colors.grey,
                                  child: TextButton(
                                    child: Text(
                                      'Chi Tiết Đơn',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, '/chef-waited-order-detail');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(
                      'Lịch Hẹn Đã Nhận',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(5, 8, 5, 5),
                    //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.orange,
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                            // margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 100,
                            height: 100,

                            child: Image.network(
                              'https://miro.medium.com/max/1200/1*pHb0M9z_UMhO22HlaOl2zw.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            //color: Colors.green,

                            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 275,
                            //height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  //color: Colors.blueAccent,
                                  height: 20,
                                  width: 280,
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text('Thứ 5: 19-07-2021'),
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        'Đang Chờ',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  //color: Colors.red,
                                  height: 20,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text('19h00 đến 21h00')
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.mobile_screen_share),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.chat),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.list),
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(context,
                                            '/chef-user-accepted-detail');
                                      },
                                    ),
                                  ],
                                ),

                                // Container(
                                //   alignment: Alignment.bottomRight,
                                //   height: 35,
                                //   margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                //   // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                //   //color: Colors.grey,
                                //   child: TextButton(
                                //     child: Text(
                                //       'Chi Tiết Đơn',
                                //       style: TextStyle(
                                //           color: Colors.orange,
                                //           fontWeight: FontWeight.bold,
                                //           fontSize: 15),
                                //     ),
                                //     onPressed: () {
                                //       Navigator.pushReplacementNamed(context,
                                //           '/chef-user-accepted-detail');
                                //     },
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(5, 8, 5, 5),
                    //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.orange,
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                            // margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 100,
                            height: 100,

                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgFZRVUPoyUZc4Q04KXSFFdm4VLyV1eZEQKA&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            //color: Colors.green,

                            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 275,
                            //height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  // color: Colors.blueAccent,
                                  height: 20,
                                  width: 280,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text('Thứ 7: 21-07-2021'),
                                      SizedBox(
                                        width: 55,
                                      ),
                                      Text(
                                        'Đang Chờ',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  //color: Colors.red,
                                  height: 20,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text('19h00 đến 21h00')
                                    ],
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.mobile_screen_share),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.chat),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.list),
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(context,
                                            '/chef-user-accepted-detail');
                                      },
                                    ),
                                  ],
                                ),
                                // Container(
                                //   alignment: Alignment.bottomRight,
                                //   height: 35,
                                //   margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                //   // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                //   //color: Colors.grey,
                                //   child: TextButton(
                                //     child: Text(
                                //       'Chi Tiết Đơn',
                                //       style: TextStyle(
                                //           color: Colors.orange,
                                //           fontWeight: FontWeight.bold,
                                //           fontSize: 15),
                                //     ),
                                //     onPressed: () {
                                //       Navigator.pushReplacementNamed(context,
                                //           '/chef-user-accepted-detail');
                                //     },
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
                  //   child: TextButton(
                  //     child: Text('Đặt lịch'),
                  //     onPressed: () {
                  //       Navigator.pushReplacementNamed(
                  //           context, '/chef-setting-time');
                  //     },
                  //   ),
                  // ),

                  // Container(
                  //   margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
                  //   child: TextButton(
                  //     child: Text('Profile'),
                  //     onPressed: () {
                  //       Navigator.pushReplacementNamed(
                  //           context, '/chef-profile');
                  //     },
                  //   ),
                  // ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    height: 200,
                    // color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Text(
                              'Số Đơn Tháng Này',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                            Container(
                              child: Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Text(
                              'Đánh Giá',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                            Container(
                              height: 50,
                              child: Text(
                                '4.5',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Text(
                              'Ví Tài Khoản',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                            Container(
                                child: Text(
                              '900.000 VND',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                          ],
                        )
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
