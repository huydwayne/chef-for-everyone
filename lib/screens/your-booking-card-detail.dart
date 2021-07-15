import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_kit_flutter/widgets/snackbar.dart';

class YourBookingCardDetail extends StatefulWidget {
  YourBookingCardDetail({Key key}) : super(key: key);

  @override
  _ourBookingCardDetailPage createState() => _ourBookingCardDetailPage();
}

class _ourBookingCardDetailPage extends State<YourBookingCardDetail> {
  // This widget is the root of your application.

  createAlertDialog(BuildContext context){
    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Xin vui lòng cho chúng tôi biết lý do hủy !"),
        content: CupertinoTextField(
          controller: customController,
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text("Gửi"),
            onPressed: (){
              Navigator.pushReplacementNamed(
                  context, '/home');
            },
          )
        ],
      );
    });
  }

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
                "Thông tin đơn của bạn",
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 400,
                    height: 100,
                    child: Row(
                      // mainAxisAlignment: ,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: CircleAvatar(
                            minRadius: 20,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgFZRVUPoyUZc4Q04KXSFFdm4VLyV1eZEQKA&usqp=CAU'),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              // color: Colors.red,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              margin: EdgeInsets.fromLTRB(0, 0, 90, 0),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Khách Hàng',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                              child: Text(
                                'Trần Hoàng Giáng Long',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
//Địa chỉ
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    //height: 100,
                    //color: Colors.grey,
                    child: Text(
                      'ĐỊA CHỈ ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.5),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                    padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: Text(
                      '226/68, Block A Sunview Tower Tăng Bạt Hổ, phường 3, Quận Bình Thạnh, TP.HCM ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),

//THỜI GIAN
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'THỜI GIAN:',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
// Ngày
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.5),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_today_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Thứ 7: 21-07-2021 ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
//GIỜ
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 6, 0, 5),
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Row(
                            children: [
                              Icon(Icons.access_time),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '19h00 đến 21h00 ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

//THÔNG TIN ĐẦU BẾP
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'THÔNG TIN ĐẦU BẾP',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
//THÔNG TIN ĐẦU BẾP
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.5),
                    ),
                    height: 120,
                    //color: Colors.green,
                    margin: EdgeInsets.fromLTRB(12, 5, 6, 10),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 110,
                          height: 150,
                          color: Colors.white60,
                          child: Image.network(
                            'https://www.hoidaubepaau.com/wp-content/uploads/2015/12/david-thai.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 280,
                              height: 35,
                              //color: Colors.red,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              alignment: Alignment.center,
                              child: Text(
                                '* Chef David Thái *',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: 280,
                              height: 35,
                              // color: Colors.red,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              alignment: Alignment.center,
                              child: Text(
                                'Chuyên các món Thái Việt Trung ',
                                style: TextStyle(fontSize: 15),
                              ),
                              // child: Image.network(
                              //     'https://previews.123rf.com/images/barks/barks1712/barks171200372/92093475-five-star-rating-icon-4-5-.jpg'),
                            ),
                            Container(
                              width: 280,
                              height: 45,
                              //color: Colors.red,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.phone),
                                  Icon(Icons.chat),
                                  Icon(Icons.person_add),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
//Chi tiết đơn hàng
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
                    child: ExpansionTile(
                      title: Text(
                        'Chi tiết đơn hàng',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 200,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: TextButton(
                                    child: Text(
                                      "- 1 khai vị: Gà xào hạt điều",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 200,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: TextButton(
                                    child: Text(
                                      "- 1 món chính: Lẩu Thái",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 200,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: TextButton(
                                    child: Text(
                                      "- 1 món phụ: Chè Sen",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
//TỔNG ĐƠN GIÁ
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            'Tổng Giá Tiền: 2.500.000đ',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          //Code Logic giá tiền ở đây
                        ],
                      ),
                    ),
                  ),
//PHƯƠNG THỨC THANH TOÁN
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'PHƯƠNG THỨC THANH TOÁN',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
//PHƯƠNG THỨC THANH TOÁN
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 0,20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 40,
                              child: Image.network(
                                'http://invina.vn/upload/tm22.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Thanh Toán Bằng Tiền Mặt',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
 // HỦY DỊCH VỤ
                  Container(
                    // color: Colors.orange,
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Row(
                        //   children: [
                        //     Container(
                        //       margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        //       width: 400,
                        //       decoration: BoxDecoration(
                        //           color: Colors.amberAccent,
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(15))),
                        //       child: TextButton(
                        //         onPressed: () {},
                        //         child: Container(
                        //           height: 50,
                        //           alignment: Alignment.center,
                        //           child: Text(
                        //             'Đặt Dịch Vụ',
                        //             style: TextStyle(
                        //                 fontSize: 20, color: Colors.black),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(width: 11,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: TextButton(
                                onPressed: () {
                                  createAlertDialog(context);
                                },
                                child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Hủy Dịch Vụ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
