import 'package:flutter/material.dart';

class YourBookingCard extends StatefulWidget {
  YourBookingCard({Key key}) : super(key: key);

  @override
  _YourBookingCardState createState() => _YourBookingCardState();
}

class _YourBookingCardState extends State<YourBookingCard> {
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
                "Giỏ hàng của bạn",
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
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54, width: 1.5),
                          color: Colors.black12.withOpacity(0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                        //padding: EdgeInsets.all(10),
                        //width: 150,
                        child: TextButton(
                          child: Text(
                            'Tất Cả Đơn Hàng',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/your_booking_card');
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54, width: 1.5),
                          color: Colors.black12.withOpacity(0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                        //padding: EdgeInsets.all(5),
                        //width: 150,
                        child: TextButton(
                          child: Text(
                            'Lịch Sử',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/history');
                          },
                        ),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.white54, width: 1.5),
                      //     color: Colors.black12.withOpacity(0.1),
                      //     borderRadius: BorderRadius.all(
                      //       Radius.circular(20),
                      //     ),
                      //   ),
                      //   margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      //   //padding: EdgeInsets.all(5),
                      //   //width: 150,
                      //   child: TextButton(
                      //     child: Text(
                      //       'Đánh Giá',
                      //       style: TextStyle(fontSize: 20),
                      //     ),
                      //     onPressed: () {
                      //       Navigator.pushReplacementNamed(
                      //           context, '/danh-gia');
                      //     },
                      //   ),
                      // )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 0.5),
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 0.2),
                      color: Colors.grey.withOpacity(0.2),
                      // borderRadius: BorderRadius.all(
                      //   Radius.circular(20),
                      // ),
                    ),
                    alignment: Alignment.topLeft,
                    //color: Colors.lightBlue,
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 10),
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                              child: Text(
                                'Bữa tối cùng đầu bếp tại gia',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                              '/your-booking-card-detail');
                                        },
                                        child: Text('Chi tiết'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Đang thực hiện',
                                  style: TextStyle(color: Colors.green),
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
            )
          ],
        ),
//         body: Container(
//           margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
//           decoration: BoxDecoration(
//             color: Colors.amberAccent,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(50),
//               bottomLeft: Radius.circular(50),
//             ),
//           ),
//           height: 150,
//
//
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Row(
// //                 children: [
// //                   Container(
// //                     child: Text('Tất cả hoạt động'),
// //                   ),
// //                   Container(
// //                     alignment: Alignment.topLeft,
// //                     color: Colors.white12,
// //                     padding: EdgeInsets.fromLTRB(25, 5, 0, 10),
// //                     child: Text(
// //                       'Bữa tối cùng đầu bếp tại gia',
// //                       style: TextStyle(
// //                           fontSize: 15,
// //                           color: Colors.black,
// //                           fontWeight: FontWeight.bold),
// //                     ),
// //                   ),
// //                   SizedBox(
// //                     width: 150,
// //                   ),
// //                   Icon(
// //                     Icons.delete,
// //                     color: Colors.black,
// //                     size: 30,
// //                   ),
// //                 ],
// //               ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
//                       padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                       child: Row(
//                         children: [
//                           Icon(Icons.calendar_today_outlined),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             'Thứ 7: 21-07-2021 ',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
// //GIỜ
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
//                       padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                       child: Row(
//                         children: [
//                           Icon(Icons.access_time),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             '19h00 đến 21h00 ',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
// //               Container(
// //                 //width: 380,
// //
// //                 alignment: Alignment.centerRight,
// //                 margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
// //                 //color: Colors.green,
// //                 child: TextButton(
// //                   onPressed: () {
//                     Navigator.pushReplacementNamed(
//                         context, '/your-booking-card-detail');
//                   },
// //                   child: Text(
// //                     'Chi tiết',
// //                     style: TextStyle(fontSize: 15, color: Colors.blue),
// //                   ),
// //                 ),
// //               )
// //             ],
// //           ),
//         ),
      ),
    );
  }
}

//               Container(
//                 margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
//                       padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                       child: Row(
//                         children: [
//                           Icon(Icons.calendar_today_outlined),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             'Thứ 7: 21-07-2021 ',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
// //GIỜ
//                     Container(
//                       margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
//                       padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                       child: Row(
//                         children: [
//                           Icon(Icons.access_time),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             '19h00 đến 21h00 ',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
