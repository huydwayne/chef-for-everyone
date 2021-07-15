import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserHistory extends StatefulWidget {
  UserHistory({Key key}) : super(key: key);

  @override
  _UserHistoryState createState() => _UserHistoryState();
}

class _UserHistoryState extends State<UserHistory> {
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
                "Đơn Đã Hoàn Thành",
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
                  Navigator.pushReplacementNamed(context, '/your_booking_card');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // Row(
                  //   children: [
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.white54, width: 1.5),
                  //         color: Colors.black12.withOpacity(0.1),
                  //         borderRadius: BorderRadius.all(
                  //           Radius.circular(20),
                  //         ),
                  //       ),
                  //       margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  //       //padding: EdgeInsets.all(10),
                  //       //width: 150,
                  //       child: TextButton(
                  //         child: Text(
                  //           'Tất Cả Đơn Hàng',
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         onPressed: () {
                  //           Navigator.pushReplacementNamed(
                  //               context, '/your_booking_card');
                  //         },
                  //       ),
                  //     ),
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.white54, width: 1.5),
                  //         color: Colors.black12.withOpacity(0.1),
                  //         borderRadius: BorderRadius.all(
                  //           Radius.circular(20),
                  //         ),
                  //       ),
                  //       margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  //       //padding: EdgeInsets.all(5),
                  //       //width: 150,
                  //       child: TextButton(
                  //         child: Text(
                  //           'Lịch Sử',
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         onPressed: () {},
                  //       ),
                  //     ),
                  //   ],
                  // ),
//                   Container(
//                     // decoration: BoxDecoration(
//                     //   border: Border.all(color: Colors.white54, width: 1.5),
//                     //   color: Colors.black12.withOpacity(0.1),
//                     //   borderRadius: BorderRadius.all(
//                     //     Radius.circular(20),
//                     //   ),
//                     // ),
//                     margin: EdgeInsets.fromLTRB(15, 20, 5, 0),
//                     //padding: EdgeInsets.all(5),
//                     //width: 150,
//                     child: Text(
//                       'Chef Đã Đánh Giá',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//
// //Chef 1
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white54, width: 1.5),
//                       color: Colors.white.withOpacity(0.3),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                     margin: EdgeInsets.fromLTRB(10, 8, 10, 5),
//                     //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
//                     child: Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 100,
//                             height: 100,
//                             child: Image.network(
//                               'https://www.hoidaubepaau.com/wp-content/uploads/2015/12/david-thai.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                               //color: Colors.green,
//                               padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
//                               //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                               width: 275,
//                               //height: 100,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 //mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                                     // color: Colors.blueAccent,
//                                     height: 20,
//                                     child: Text(
//                                       'Chef David Thái',
//                                       style: TextStyle(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
//                                     alignment: Alignment.centerLeft,
//                                     //color: Colors.red,
//                                     height: 20,
//                                     child: Text(
//                                       'ngày: 5.06.2020',
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.grey),
//                                     ),
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
//                                     alignment: Alignment.centerLeft,
//                                     //color: Colors.red,
//                                     height: 20,
//                                     child: Image.network(
//                                       'https://vuejsexamples.com/content/images/2019/01/vue-dynamic-star-rating.jpg',
//                                       width: 200,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//
//                                   //https://cdn-images-1.medium.com/max/481/1*589bVD2hvyykX_PN_K5CmA.png
//                                   Container(
//                                     alignment: Alignment.bottomRight,
//                                     height: 35,
//                                     margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
//                                     // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                     //color: Colors.grey,
//                                     child: TextButton(
//                                       child: Text(
//                                         'Chi Tiết',
//                                         style: TextStyle(
//                                             color: Colors.orange,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                       onPressed: () {},
//                                     ),
//                                   )
//                                 ],
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
// //Chef 2
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white54, width: 1.5),
//                       color: Colors.white.withOpacity(0.3),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                     margin: EdgeInsets.fromLTRB(10, 8, 10, 5),
//                     //padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
//                     child: Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                             width: 100,
//                             height: 100,
//                             child: Image.network(
//                               'https://channel.mediacdn.vn/prupload/879/2018/11/img20181111150839661.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                               //color: Colors.green,
//                               padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
//                               //margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
//                               width: 275,
//                               //height: 100,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 //mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                                     // color: Colors.blueAccent,
//                                     height: 20,
//                                     child: Text(
//                                       'Chef Thiên Minh',
//                                       style: TextStyle(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
//                                     alignment: Alignment.centerLeft,
//                                     //color: Colors.red,
//                                     height: 20,
//                                     child: Text(
//                                       'ngày: 14.02.2021',
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.grey),
//                                     ),
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
//                                     alignment: Alignment.centerLeft,
//                                     //color: Colors.red,
//                                     height: 20,
//                                     child: Image.network(
//                                       'https://vuejsexamples.com/content/images/2019/01/vue-dynamic-star-rating.jpg',
//                                       width: 200,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//
//                                   //https://cdn-images-1.medium.com/max/481/1*589bVD2hvyykX_PN_K5CmA.png
//                                   Container(
//                                     alignment: Alignment.bottomRight,
//                                     height: 35,
//                                     margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
//                                     // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                                     //color: Colors.grey,
//                                     child: TextButton(
//                                       child: Text(
//                                         'Chi Tiết',
//                                         style: TextStyle(
//                                             color: Colors.orange,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                       onPressed: () {},
//                                     ),
//                                   )
//                                 ],
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),

                  // Container(
                  //   // decoration: BoxDecoration(
                  //   //   border: Border.all(color: Colors.white54, width: 1.5),
                  //   //   color: Colors.black12.withOpacity(0.1),
                  //   //   borderRadius: BorderRadius.all(
                  //   //     Radius.circular(20),
                  //   //   ),
                  //   // ),
                  //   margin: EdgeInsets.fromLTRB(15, 20, 5, 0),
                  //
                  //   child: Text(
                  //     'Đơn Hàng Đã Đặt Gần Đây',
                  //     style:
                  //         TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
//Đơn Hàng 1
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 0.2),
                      color: Colors.amber.withOpacity(0.2),
                      // borderRadius: BorderRadius.all(
                      //   Radius.circular(20),
                      // ),
                    ),
                    alignment: Alignment.topLeft,
                    //color: Colors.lightBlue,
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 10),
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bữa tối cùng đầu bếp tại gia',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: Icon(Icons.share),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Thứ 7: 21-07-2021 ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
//GIỜ
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.access_time),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 130, 0),
                                      //color: Colors.orange,

                                      child: Text(
                                        '19h00 đến 21h00 ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.green,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context,
                                              '/booked-card-with-rating');
                                        },
                                        child: Text('Chi tiết'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
//Đơn Hàng 2
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 0.2),
                      color: Colors.amber.withOpacity(0.2),
                      // borderRadius: BorderRadius.all(
                      //   Radius.circular(20),
                      // ),
                    ),
                    alignment: Alignment.topLeft,
                    //color: Colors.lightBlue,
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 10),
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Party Cùng Chef',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: Icon(Icons.share),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Thứ 7: 21-07-2021 ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
//GIỜ
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.access_time),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 130, 0),
                                      //color: Colors.orange,

                                      child: Text(
                                        '19h00 đến 21h00 ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      // color: Colors.green,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context,
                                              '/booked-card-with-rating');
                                        },
                                        child: Text('Chi tiết'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.white54, width: 1.5),
                  //     color: Colors.grey.withOpacity(0.2),
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(5),
                  //     ),
                  //   ),
                  //   margin: EdgeInsets.fromLTRB(10, 20, 15, 10),
                  //   child: ExpansionTile(
                  //     title: Container(
                  //       child: Text(
                  //         'Chef đã đánh giá ',
                  //         style: TextStyle(color: Colors.black),
                  //       ),
                  //     ),
                  //     expandedAlignment: ,
                  //     children: [
                  //       Container(
                  //         width: 100,
                  //         height: 100,
                  //         color: Colors.green,
                  //         child: Text(''),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
