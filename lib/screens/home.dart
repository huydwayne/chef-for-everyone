import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:material_kit_flutter/constants/Theme.dart';
import 'package:material_kit_flutter/widgets/app-bar.dart';

//widgets
import 'package:material_kit_flutter/widgets/navbar.dart';
import 'package:material_kit_flutter/widgets/card-horizontal.dart';
import 'package:material_kit_flutter/widgets/card-small.dart';
import 'package:material_kit_flutter/widgets/card-square.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';
import 'package:material_kit_flutter/widgets/bottom-nav-bar.dart';
import 'package:material_kit_flutter/widgets/search-box.dart';

final List<String> listAds = [
  'assets/img/promotion1.png',
  'assets/img/promotion3.png',
  'assets/img/promotion4.jpg',
];

final List<String> listFood = [
  'assets/img/voucher1.png',
  'assets/img/voucher2.png',
  'assets/img/voucher3.png',
];

final Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Bí quyết để có 1 bữa ăn ngon",
    "image":
        "https://images.unsplash.com/photo-1495461199391-8c39ab674295?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "price": "180"
  },
  "Makeup": {
    "title": "Find the cheapest deals on our range...",
    "image":
        "https://images.unsplash.com/photo-1515709980177-7a7d628c09ba?crop=entropy&w=840&h=840&fit=crop",
    "price": "220"
  },
  "Coffee": {
    "title": "Looking for Men's watches?",
    "image":
        "https://images.unsplash.com/photo-1490367532201-b9bc1dc483f6?crop=entropy&w=840&h=840&fit=crop",
    "price": "40"
  },
  "Fashion": {
    "title": "Curious Blossom Skin Care Kit.",
    "image":
        "https://images.unsplash.com/photo-1536303006682-2ee36ba49592?crop=entropy&w=840&h=840&fit=crop",
    "price": "188"
  },
  "Argon": {
    "title": "Adjust your watch to your outfit.",
    "image":
        "https://images.unsplash.com/photo-1491336477066-31156b5e4f35?crop=entropy&w=840&h=840&fit=crop",
    "price": "180"
  }
};

class MainHome extends StatefulWidget {
  MainHome({Key key}) : super(key: key);
  @override
  _MainHomeStage createState() => _MainHomeStage();
}

class _MainHomeStage extends State<MainHome> {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      backgroundColor: MaterialColors.bgColorScreen,
      // key: _scaffoldKey,
      drawer: MaterialDrawer(currentPage: "Home"),
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBox(
                onChanged: (value) {},
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  height: 100,
                ),
                items: listAds
                    .map((item) => Container(
                        child: Center(
                            child: Image.asset(item,
                                fit: BoxFit.cover, width: 1000))))
                    .toList(),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "Dịch vụ",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),

              Container(
                alignment: Alignment.topLeft,
                height: 250,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.mashed.com/img/gallery/easy-dishes-that-make-you-seem-like-a-professional-chef/intro.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // height: 200,
                      //width: 100,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          padding: EdgeInsets.all(1),
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.4),
                          child: TextButton(
                            child: Text(
                              "Đặt đầu bếp cho bữa ăn ngon tại nhà ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/pakages-service');
                            },
                          ),
                        ),
                      ),
                    ),
// dịch vụ 2
                    Container(
                      width: 180,
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: new ExactAssetImage("assets/img/service2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // height: 200,
                      //width: 100,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          padding: EdgeInsets.all(1),
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.4),
                          child: TextButton(
                            child: Text(
                              "Đặt đầu bếp cho bữa tiệc tại gia",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/party-service');
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: <Widget>[
              //     Column(
              //       children: [
              //         Row(
              //           children: [
              //             Container(
              //               color: Colors.green,
              //               width: 200,
              //               child: Text('a'),
              //             )
              //           ],
              //         )
              //       ],
              //     ),
              //     // TextButton(
              //     //   child: Container(
              //     //     child: Center(
              //     //       child: Text('Đặt đầu bếp cho bữa ăn ngon ngay tại nhà bạn',
              //     //           textAlign: TextAlign.center,
              //     //           style: TextStyle(
              //     //             fontSize: 15,
              //     //             fontWeight: FontWeight.bold,
              //     //           )),
              //     //     ),
              //     //     width: 110,
              //     //     height: 200,
              //     //     padding: EdgeInsets.all(20),
              //     //     decoration: BoxDecoration(
              //     //       borderRadius: BorderRadius.all(Radius.circular(20)),
              //     //       color: Colors.lightGreen,
              //     //       // image: DecorationImage(
              //     //       //   image: AssetImage('assets/img/asian_button.jpg'),
              //     //       // ),
              //     //     ),
              //     //   ),
              //     //   onPressed: () {
              //     //     Navigator.pushReplacementNamed(
              //     //         context, '/pakages-service');
              //     //   },
              //     // ),
              //
              //     TextButton(
              //       child: Container(
              //         child: Center(
              //           child: Text('Đặt đầu bếp cho bữa tiệc tại gia',
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.bold,
              //               )),
              //         ),
              //         width: 110,
              //         height: 200,
              //         padding: EdgeInsets.all(20),
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.all(Radius.circular(20)),
              //           color: Colors.orange,
              //           // image: DecorationImage(
              //           //   image: AssetImage('assets/img/europe_button.jpg'),
              //           // ),
              //         ),
              //       ),
              //       onPressed: () {
              //         Navigator.pushReplacementNamed(context, '/chef-list');
              //       },
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'VOU',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'CHER HÔM NAY',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              // CarouselSlider(
              //   options: CarouselOptions(
              //     autoPlay: false,
              //     viewportFraction: 1.0,
              //     enlargeCenterPage: false,
              //     height: 150,
              //   ),
              //   items: listFood
              //       .map(
              //         (item) => Container(
              //           child: Center(
              //             child: Image.asset(item,
              //                 fit: BoxFit.cover, width: 320),
              //           ),
              //         ),
              //       )
              //       .toList(),
              // ),
//Voucher list
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54, width: 1.5),
                  color: Colors.amber.withOpacity(0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(0, 8, 0, 5),
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
                                    'Lưu mã giảm',
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
                margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
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
                                    'Lưu mã giảm',
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
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
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
                                    'Lưu mã giảm',
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
            ],
          ),
        ),
      ),
    );
  }
}
