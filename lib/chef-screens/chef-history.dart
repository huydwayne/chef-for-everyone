import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/app-bar.dart';

class ChefHistory extends StatefulWidget {
  ChefHistory({Key key}) : super(key: key);
  @override
  _ChefHistoryStage createState() => _ChefHistoryStage();
}

class _ChefHistoryStage extends State<ChefHistory> {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: Colors.amber,
              title: Text(
                "Hoạt Động Của Bạn",
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
                  Navigator.pushReplacementNamed(context, '/chef-home');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(
                      'Đơn Đã Thực Hiện',
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
                                      Text('Thứ 5: 19-07-2021'),
                                      SizedBox(
                                        width: 5,
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
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text('Thứ 7: 21-07-2021')
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
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
