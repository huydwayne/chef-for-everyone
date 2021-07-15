import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//widgets
import 'chef-bottom-nav-bar.dart';

class ChefHome extends StatefulWidget {
  ChefHome({Key key}) : super(key: key);
  @override
  _ChefHomeStage createState() => _ChefHomeStage();
}

class _ChefHomeStage extends State<ChefHome> {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //bottomNavigationBar: ChefBottomNavBar(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: Colors.amber,
              title: Text(
                "Danh Sách Hoạt Động",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/chef-dashboard');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SwitchListTile(
                    title: Container(
                      alignment: Alignment.centerRight,
                      // color: Colors.green,
                      child: Text(
                        'Nhận Đơn',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ),
                    value: true,
                    onChanged: (value) {},
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
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
                      'Lịch Hẹn Hiện Tại',
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
                                      Navigator.pushReplacementNamed(context,
                                          '/chef-user-accepted-detail');
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
                                      Navigator.pushReplacementNamed(context,
                                          '/chef-user-accepted-detail');
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
                  // Container(
                  //   child: TextButton(
                  //     child: Text('Đặt lịch'),
                  //     onPressed: () {
                  //       Navigator.pushReplacementNamed(
                  //           context, '/chef-setting-time');
                  //     },
                  //   ),
                  // ),

                  Container(
                    child: TextButton(
                      child: Text('Profile'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/chef-profile');
                      },
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black.withOpacity(0.3),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
