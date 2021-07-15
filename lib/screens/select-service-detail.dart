import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:expansion_card/expansion_card.dart';
import 'modal-list-food.dart';

class SelectServiceDetail extends StatefulWidget {
  SelectServiceDetail({Key key}) : super(key: key);

  @override
  _SelectServiceDetailPage createState() => _SelectServiceDetailPage();
}

class _SelectServiceDetailPage extends State<SelectServiceDetail> {
  // This widget is the root of your application.
  bool isClick = false;
  String type = "main";
  String size = "small";
  int total = 0;
  Map<String, dynamic> amountDishes = {
    "main": 2, //món mặn
    "soup": 1, //món canh
    "side": 1, //món xào
    "dessert": 1, //tráng miệng
  };

  Map<String, dynamic> currentAmount = {
    "main": 0,
    "soup": 0,
    "side": 0,
    "dessert": 0,
  };
  List<Map<String, dynamic>> cart = [];
  List<Map<String, dynamic>> menu = [
    {
      "id": 1,
      "type": "main",
      "name": "Thịt ba chỉ kho",
      "img":
          "https://cdn.jamja.vn/blog/wp-content/uploads/2017/11/thit-rang-chay-canh.jpg",
      "price": 135000,
    },
    {
      "id": 2,
      "type": "main",
      "name": "Gà chiên nước mắm",
      "img":
          "http://imgs.vietnamnet.vn/Images/2016/12/09/08/20161209085123-ga3.jpg",
      "price": 90000,
    },
    {
      "id": 3,
      "type": "main",
      "name": "Lòng heo chiên nước mắm",
      "img": "https://nauankhongkho.com/wp-content/uploads/2018/04/bgbt.png",
      "price": 100000,
    },
    {
      "id": 4,
      "type": "main",
      "name": "Sườn xào chua ngọt",
      "img":
          "https://cdn.huongnghiepaau.com/wp-content/uploads/2020/11/suon-xao-chua-ngot.jpg",
      "price": 135000,
    },
    {
      "id": 5,
      "type": "main",
      "name": "Mực trứng chiên nước mắm",
      "img":
          "https://nuocmamtin.com/wp-content/uploads/2021/06/muc-trung-chien-nuoc-mam-2.jpg",
      "price": 150000,
    },
    {
      "id": 6,
      "type": "main",
      "name": "Cá lóc kho tiêu",
      "img": "https://www.sieuthisaigon.com.vn/upload/source/dichvu/c%C3%B4ng%20th%E1%BB%A9c%20n%E1%BA%A5u%20%C4%83n/mon%20man/ca%20loc%20kho%20tieu/ca-loc-kho-tieu.jpg",
      "price": 95000,
    },
    {
      "id": 7,
      "type": "main",
      "name": "Tôm rim nước dừa",
      "img": "https://anh.24h.com.vn/upload/1-2017/images/2017-02-27/1488159114-img-5110-1487908957840.jpg",
      "price": 110000,
    },
    {
      "id": 8,
      "type": "side",
      "name": "Đậu cove xào trứng gà non",
      "img": "https://cdn.tgdd.vn/2021/03/CookProduct/0-1200x676-1.jpg",
      "price": 75000,
    },
    {
      "id": 9,
      "type": "side",
      "name": "Khổ qua xào trứng",
      "img": "https://image.cooky.vn/recipe/g5/44358/s640/cooky-recipe-636804127845026003.jpg",
      "price": 55000,
    },
    {
      "id": 10,
      "type": "side",
      "name": "Rau muống xào tỏi",
      "img": "https://www.cet.edu.vn/wp-content/uploads/2018/03/rau-muong-xao-toi.jpg",
      "price": 55000,
    },
    {
      "id": 11,
      "type": "soup",
      "name": "Canh chua cá lóc",
      "img": "https://chef.vn/cdn/mon-an/mon-canh-chua-ca-doc-mung.jpg",
      "price": 95000,
    },
    {
      "id": 12,
      "type": "soup",
      "name": "Canh cua rau đay",
      "img": "https://pastaxi-manager.onepas.vn/content/uploads/articles/vuonghoai/canh-cua-rau-day/canh-cua-rau-day-4.jpg",
      "price": 150000,
    },
    {
      "id": 13,
      "type": "soup",
      "name": "Canh cá lóc lá giang",
      "img": "https://monngonmoingay.com/wp-content/uploads/2016/03/Canh-ca-loc-la-giang_540-e1457652295964.jpg",
      "price": 110000,
    },
    {
      "id": 14,
      "type": "dessert",
      "name": "Kem Vani",
      "img":
          "https://amthucgiadinh.files.wordpress.com/2014/01/menta_icecream.jpg",
      "price": 50000,
    },
    {
      "id": 15,
      "type": "dessert",
      "name": "Bánh flan",
      "img":
          "https://cdn.daotaobeptruong.vn/wp-content/uploads/2020/11/banh-flan.jpg",
      "price": 50000,
    },
    {
      "id": 16,
      "type": "dessert",
      "name": "Salad hoa quả",
      "img":
          "https://cdn.tgdd.vn/2020/08/CookRecipe/Avatar/salad-trai-cay-khong-nuoc-sot-thumbnail-3.jpg",
      "price": 65000,
    },
    {
      "id": 17,
      "type": "dessert",
      "name": "Kem khoai môn",
      "img":
          "https://cdn.dayphache.edu.vn/wp-content/uploads/2020/03/kem-khoai-mon-beo.jpg",
      "price": 55000,
    },
    {
      "id": 18,
      "type": "dessert",
      "name": "Kem socola",
      "img": "https://cdn.tgdd.vn/2020/07/CookProduct/11-1200x676-2.jpg",
      "price": 65000,
    },
    {
      "id": 19,
      "type": "side",
      "name": "Bông cải xanh xào tôm",
      "img": "https://i.pinimg.com/736x/05/8c/7f/058c7fd1f13dedbf6834067b8e6e0e25.jpg",
      "price": 55000,
    },
  ];

  List<Widget> getList(handleClick) {
    List<Map<String, dynamic>> showMenu = menu
        .expand((element) => [if (element["type"] == type) element])
        .toList();

    List<Widget> menuData = showMenu
        .map(
          (item) => CheckboxListTile(
            value: cart.contains(item),
            onChanged: amountDishes["${item["type"]}"] !=
                        currentAmount["${item["type"]}"] ||
                    cart.contains(item)
                ? (value) {
                    setState(() {
                      handleClick(item);
                    });
                  }
                : null,
            title: Text(item["name"]),
            subtitle:
                Text(NumberFormat("#,###", "en_US").format(item["price"])),
            secondary: Container(
              width: 150,
              height: 100,
              child: Image.network(
                item["img"],
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
        .toList();

    return menuData;
  }

  void reset() {
    cart = [];
    total = 0;
    currentAmount["main"] = 0;
    currentAmount["side"] = 0;
    currentAmount["soup"] = 0;
    currentAmount["dessert"] = 0;
  }

  String renderListTitle(type) {
    String result = "";
    List<dynamic> newList = cart
        .expand((element) => [if (element["type"] == type) element["name"]])
        .toList();
    if (newList.isEmpty) {
      switch (type) {
        case "main":
          result = "- ${amountDishes["main"]} món mặn";
          break;
        case "side":
          result = "- ${amountDishes["side"]} món xào";
          break;
        case "soup":
          result = "- ${amountDishes["soup"]} món canh";
          break;
        case "dessert":
          result = "- ${amountDishes["dessert"]} tráng miệng";
          break;
        default:
      }
    } else {
      final dishes = newList.reduce((value, element) => value + ', ' + element);
      result = "- $dishes";
    }
    return result;
  }

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
              expandedHeight: 50,
              floating: true,
              pinned: true,
              title: Text(
                'CHI TIẾT DỊCH VỤ',
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/pakages-service');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new ExactAssetImage("assets/img/service1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                    //width: 100,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 35,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      'Đầu bếp cho bữa ăn',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    padding: EdgeInsets.fromLTRB(0, 10, 5, 0),
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      'Tận hưởng bữa ăn cùng chuyên gia phục vụ trong chính căn bếp của bạn.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
//Chọn số lượng
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                    width: 400,
                    height: 60,
                    //  alignment: Alignment.center,
                    child: Column(
                      children: [
//Chọn số người
                        Container(
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                padding: EdgeInsets.fromLTRB(15, 15, 29, 0),
                                child: Text(
                                  'Số người:',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          size = "small";
                                          amountDishes["main"] = 2;
                                          amountDishes["soup"] = 1;
                                          amountDishes["side"] = 1;
                                          reset();
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white54,
                                              width: 1.5),
                                          color: size == "small"
                                              ? Colors.amber
                                              : Colors.grey,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        width: 70,
                                        child: Text(
                                          "1 - 3",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          size = "big";
                                          amountDishes["main"] = 3;
                                          amountDishes["soup"] = 2;
                                          amountDishes["side"] = 2;
                                          reset();
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white54,
                                              width: 1.5),
                                          color: size == "big"
                                              ? Colors.amber
                                              : Colors.grey,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        width: 70,
                                        child: Text(
                                          "4 - 6",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
//Chọn loại menu
//                         Container(
//                           // width: 370,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 40,
//                                 padding: EdgeInsets.fromLTRB(5, 15, 0, 5),
//                                 margin: EdgeInsets.fromLTRB(0, 0, 47.5, 0),
//                                 child: Text(
//                                   'Menu:',
//                                   style: TextStyle(fontSize: 15),
//                                 ),
//                               ),
//                               Container(
//                                 padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
//                                 child: Row(
//                                   // padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
//                                   children: [
//                                     TextButton(
//                                       onPressed: () {},
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           border: Border.all(
//                                               color: Colors.white54,
//                                               width: 1.5),
//                                           color: Colors.grey,
//                                           borderRadius: BorderRadius.all(
//                                               Radius.circular(5)),
//                                         ),
//                                         width: 70,
//                                         child: Text(
//                                           "Basic",
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               color: Colors.black),
//                                           textAlign: TextAlign.center,
//                                         ),
//                                       ),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {},
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           border: Border.all(
//                                               color: Colors.white54,
//                                               width: 1.5),
//                                           color: Colors.grey,
//                                           borderRadius: BorderRadius.all(
//                                               Radius.circular(5)),
//                                         ),
//                                         width: 100,
//                                         child: Text(
//                                           "Premium",
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               color: Colors.black),
//                                           textAlign: TextAlign.center,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
                      ],
                    ),
                  ),
//Chọn menu
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: ExpansionTile(
                      title: Text(
                        'Menu',
                        style: TextStyle(color: Colors.black),
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
                                      renderListTitle("main"),
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        type = "main";
                                      });
                                      _menuModal(context);
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 200,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: TextButton(
                                    child: Text(
                                      renderListTitle("soup"),
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        type = "soup";
                                      });
                                      _menuModal(context);
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 200,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: TextButton(
                                    child: Text(
                                      renderListTitle("side"),
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        type = "side";
                                      });
                                      _menuModal(context);
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 200,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: TextButton(
                                    child: Text(
                                      renderListTitle("dessert"),
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        type = "dessert";
                                      });
                                      _menuModal(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: TextButton(
                                child: Text(
                                  '* Nhấn để chọn menu *',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
//GIÁ
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: ExpansionTile(
                      title: Container(
                        child: Row(
                          children: [
                            Text(
                              'Tổng giá: ',
                              style: TextStyle(color: Colors.black),
                            ),
                            //Code Logic giá tiền ở đây
                            Text(
                              () {
                                if (total == 0) {
                                  return "Vui lòng chọn món";
                                } else {
                                  return NumberFormat("#,###", "en_US")
                                      .format(total);
                                }
                              }(),
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      // children: [
                      //   Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Column(
                      //         children: [
                      //           Container(
                      //             margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                      //             width: 300,
                      //             alignment: Alignment.centerLeft,
                      //             // margin: EdgeInsets.symmetric(horizontal: 0),
                      //             child: Text(
                      //               "- Phí dịch vụ: code logic giá tiền",
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //           ),
                      //           Container(
                      //             margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                      //             width: 300,
                      //             alignment: Alignment.centerLeft,
                      //             // margin: EdgeInsets.symmetric(horizontal: 0),
                      //             child: Text(
                      //               "- Thuế: code logic giá tiền",
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //           ),
                      //           Container(
                      //             margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                      //             width: 300,
                      //             alignment: Alignment.centerLeft,
                      //             // margin: EdgeInsets.symmetric(horizontal: 0),
                      //             child: Text(
                      //               "- Phụ thu: code logic giá tiền",
                      //               style: TextStyle(fontSize: 15),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ],
                    ),
                  ),
//ĐIỀU KHOẢN VÀ ĐIỀU KIỆN
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: ExpansionTile(
                      title: Container(
                        child: Text(
                          'Điều khoản điều kiện ',
                          style: TextStyle(color: Colors.black),
                        ),
                        //Code Logic giá tiền ở đây
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                          // padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          width: 350,
                          // color:Colors.amber,
                          alignment: Alignment.centerLeft,
                          // margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Text(
                            " - Đầu bếp sẽ nấu bất kì món nào khách hàng yêu cầu có trong danh sách menu đã chọn.",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          //width: 350,
                          // color:Colors.amber,
                          alignment: Alignment.centerLeft,
                          // margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Text(
                            " - Đầu bếp sẽ lau dọn bếp sau khi sử dụng.",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                          // padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          width: 350,
                          // color:Colors.amber,
                          alignment: Alignment.centerLeft,
                          // margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Text(
                            " - Đầu bếp sẽ sát khuẩn tay và kiểm tra thân nhiệt trước khi vào nhà bạn.",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
// continue
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: currentAmount["main"] > 0 &&
                              currentAmount["side"] > 0 &&
                              currentAmount["soup"] > 0 &&
                              currentAmount["dessert"] > 0
                          ? Colors.amber
                          : Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: TextButton(
                      child: Text(
                        'Tiếp tục',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: currentAmount["main"] > 0 &&
                              currentAmount["side"] > 0 &&
                              currentAmount["soup"] > 0 &&
                              currentAmount["dessert"] > 0
                          ? () {
                              Navigator.pushReplacementNamed(
                                  context, '/booking-time');
                            }
                          : null,
                    ),
                  ),
//                   Container(
//                     // height: 100,
//                     // width: 150,
//                     color: Colors.amber,
//                     child: TextButton(
//                       onPressed: () {},
//                       child: Text('Tiếp tục'),
//                     ),
//                   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _menuModal(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setModalState) {
          return Container(
            child: ListView(
              children: [
                Container(
                  color: Colors.amber,
                  padding: EdgeInsets.all(5),
                  width: 400,
                  height: 50,
                  child: Text(
                    () {
                      if (type == "main") {
                        return "Món mặn";
                      } else if (type == "side") {
                        return "Món xào";
                      } else if (type == "soup") {
                        return "Món canh";
                      } else if (type == "dessert") {
                        return "Món tráng miệng";
                      }
                    }(),
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                Column(
                  children: getList((item) {
                    setModalState(() {
                      if (!cart.contains(item)) {
                        cart.add(item);
                        currentAmount["${item["type"]}"]++;
                        total += item["price"];
                      } else {
                        cart.removeWhere(
                            (element) => element["id"] == item["id"]);
                        currentAmount["${item["type"]}"]--;
                        total -= item["price"];
                      }
                    });
                  }),
                ),
                amountDishes[type] == currentAmount[type]
                    ? Container(
                        height: 50,
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(15, 5, 20, 5),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white54, width: 1.5),
                            color: Colors.amberAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextButton(
                          child: Text(
                            'Đặt Món',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    : Container(),
              ],
            ),
          );
        });
      },
    );
  }
}
