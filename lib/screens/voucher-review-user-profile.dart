import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VoucherReviewUserProfile extends StatefulWidget {
  VoucherReviewUserProfile({Key key}) : super(key: key);

  @override
  _VoucherReviewUserProfileState createState() => _VoucherReviewUserProfileState();
}

class _VoucherReviewUserProfileState extends State<VoucherReviewUserProfile> {
  // This widget is the root of your application.
  String method = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: Colors.amber,
              title: Text(
                "Voucher Đã Lưu",
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
                  Navigator.pushReplacementNamed(context, '/user-profile');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
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
                            color: Colors.orange,
                            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Text(
                                'Giảm 5% tổng hóa đơn',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
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
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    // color: Colors.blueAccent,
                                    height: 20,
                                    child: Text(
                                      'bữa trưa vui vẻ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                    alignment: Alignment.centerLeft,
                                    //color: Colors.red,
                                    height: 20,
                                    child: Text(
                                      'HSD:20.07.2021',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
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
                                        ' ',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
//Voucher 2
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                    //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            color: Colors.orange,
                            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Text(
                                'Giảm 7% tổng hóa đơn',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
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
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    // color: Colors.blueAccent,
                                    // height: 20,
                                    child: Text(
                                      'đại tiệc cùng chef',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                    alignment: Alignment.centerLeft,
                                    //color: Colors.red,
                                    height: 20,
                                    child: Text(
                                      'HSD:20.07.2021',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
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
                                        ' ',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
//Voucher 3
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            color: Colors.orange,
                            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                            //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Text(
                                'Giảm 4% tổng hóa đơn',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
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
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  // color: Colors.blueAccent,
                                  // height: 20,
                                  child: Text(
                                    'sinh nhật cùng chef',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  //color: Colors.red,
                                  height: 20,
                                  child: Text(
                                    'HSD:20.07.2021',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
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
                                      ' ',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
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
