import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChefWaitedOrderDetail extends StatefulWidget {
  ChefWaitedOrderDetail({Key key}) : super(key: key);

  @override
  _ChefWaitedOrderDetailPage createState() => _ChefWaitedOrderDetailPage();
}

class _ChefWaitedOrderDetailPage extends State<ChefWaitedOrderDetail> {
  // This widget is the root of your application.
  createAlertDialog(BuildContext context){
    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Xin vui lòng cho chúng tôi biết lý do bạn bỏ qua đơn này !"),
        content: CupertinoTextField(
          controller: customController,
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text("Gửi"),
            onPressed: (){
              Navigator.pushReplacementNamed(
                  context, '/chef-home');
            },
          )
        ],
      );
    });
  }

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
                "Thông tin đơn khách hàng",
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
                                    color: Colors.blueAccent,
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
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
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
//Voucher
                  /*Container(
                    //color: Colors.green,
                    //height: 100,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
                    padding: EdgeInsets.fromLTRB(0, 5, 15, 5),

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //color: Colors.red,
                          margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                          width: 40,
                          child: Image(
                            image: NetworkImage(
                                'https://cdn.iconscout.com/icon/premium/png-256-thumb/gift-voucher-2903886-2413045.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              //color: Colors.yellow,
                              width: 110,
                              //height: 40,
                              child: TextButton(
                                child: Text(
                                  'Giảm 5% tổng hóa đơn',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 15),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          //color: Colors.green,
                          // height: 40,
                          child: TextButton(
                            child: Text(
                              'Chọn mã giảm giá',
                              style: TextStyle(
                                  color: Colors.lightBlue, fontSize: 18),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/voucher-add-payment');
                            },
                          ),
                        )
                      ],
                    ),
                  ),*/
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
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.5),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 20),
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              groupValue: method == "cash" ? true : false,
                              value: false,
                              onChanged: (value) {
                                setState(() {
                                  method = "cash";
                                });
                              },
                            ),
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
//NÚT ĐẶT / HỦY DỊCH VỤ
                  Container(
                    // color: Colors.orange,
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                              width: 400,
                              decoration: BoxDecoration(
                                  color: method != ""
                                      ? Colors.amberAccent
                                      : Colors.greenAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: TextButton(
                                onPressed: () {
                                  // Thực hiện khi chọn xong phương thức
                                  Navigator.pushReplacementNamed(
                                      context, '/chef-success-alert');
                                },
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Nhận Đơn',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(width: 11,),
                        Row(
                          children: [
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: TextButton(
                                onPressed: () {
                                  //   Navigator.pushReplacementNamed(
                                  // context, '/chef-success-alert');
                                },
                                child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {
                                      createAlertDialog(context);
                                    },
                                  child: Text(
                                    'Bỏ Qua',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
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
