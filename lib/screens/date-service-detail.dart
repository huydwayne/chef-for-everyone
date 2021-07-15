import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:expansion_card/expansion_card.dart';
import 'modal-list-food.dart';

class DateServiceDetail extends StatefulWidget {
  DateServiceDetail({Key key}) : super(key: key);

  @override
  _DateServiceDetailPage createState() => _DateServiceDetailPage();
}

class _DateServiceDetailPage extends State<DateServiceDetail> {
  // This widget is the root of your application.
  bool isClick = false;
  String type = "main";
  String size = "small";
  int total = 0;
  Map<String, dynamic> amountDishes = {
    "main": 2, //món chính
    "soup": 1, //món rượu
    "side": 1, //món khai vị
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
      "name": "Cá Basa fillet áp chảo",
      "img":
          "https://www.hoidaubepaau.com/wp-content/uploads/2018/04/ca-hoi-ap-chao-xot-chanh.jpg",
      "price": 165000,
    },
    {
      "id": 2,
      "type": "main",
      "name": "Fillet cá hồi áp chảo",
      "img":
          "https://image-us.eva.vn/upload/2-2021/images/2021-04-09/image12-1617935375-391-width606height623.png",
      "price": 390000,
    },
    {
      "id": 3,
      "type": "main",
      "name": "Mỳ Ý sốt kem",
      "img":
          "https://media.cooky.vn/recipe/g5/45846/s320x320/recipe45846-cook-step4-636858351308814649.jpg",
      "price": 135000,
    },
    {
      "id": 4,
      "type": "main",
      "name": "Tôm sú nướng bơ tỏi",
      "img":
          "https://file.hstatic.net/1000166699/file/102_7efe965fa69f45faa51dc317cb945501_grande.png",
      "price": 480000,
    },
    {
      "id": 5,
      "type": "main",
      "name": "Sườn heo nướng ngũ vị",
      "img":
          "https://cdn1.ngonbonmua.com/wp-content/uploads/2015/12/suon-nuong-ngu-vi.jpg",
      "price": 200000,
    },
    {
      "id": 6,
      "type": "main",
      "name": "Thịt cừu hầm rượu vang",
      "img":
          "https://cdn.daotaobeptruong.vn/wp-content/uploads/2015/10/thu-tai-nau-an-ngon-voi-suon-cuu-sot-vang-kieu-phap.jpg",
      "price": 450000,
    },
    {
      "id": 7,
      "type": "main",
      "name": "Bò tảng áp chảo",
      "img":
          "https://image.shutterstock.com/image-photo/cooked-aged-beef-chuleton-rubia-260nw-1770146297.jpg",
      "price": 600000,
    },
    {
      "id": 8,
      "type": "main",
      "name": "Ức vịt áp chảo",
      "img":
          "https://nhahanghuongsen.com.vn/wp-content/uploads/2019/06/uc-vit-ap-chao-kem-puree-bong-cai-trang-1.jpg",
      "price": 300000,
    },
    {
      "id": 9,
      "type": "side",
      "name": "Vẹm xanh sốt vang",
      "img":
          "https://file.hstatic.net/1000030244/file/vem-xanh-2_9abb9024445d4600a7c8614f39ad97ba_grande.jpg",
      "price": 165000,
    },
    {
      "id": 10,
      "type": "side",
      "name": "soup tôm nấm bí đỏ",
      "img":
          "https://atlasgarden.vn/wp-content/uploads/2020/10/cac-mon-khai-vi-noi-tieng-trong-am-thuc-chau-au-1-1024x683.jpg",
      "price": 210000,
    },
    {
      "id": 11,
      "type": "side",
      "name": "Cá Xay sốt kem bơ",
      "img": "https://saigonvoice.vn/cdn/2020/12/3_pinterest.jpg",
      "price": 235000,
    },
    {
      "id": 12,
      "type": "side",
      "name": "Tôm viên xốt kem sữa chua",
      "img": "http://amthucaau.zohosites.com/files/salad-coi-so-diep.jpg",
      "price": 420000,
    },
    {
      "id": 13,
      "type": "side",
      "name": "Rissoto",
      "img":
          "https://cdn.tgdd.vn/Files/2014/04/04/540914/Cach-lam-com-Risotto-chanh-tomi-tu-noi-com-dien-600x400.jpg",
      "price": 275000,
    },
    {
      "id": 14,
      "type": "dessert",
      "name": "Bánh tart chanh",
      "img":
          "https://fthmb.tqn.com/cCPPHZvsFcjoqTqQblxUlhmUUKQ=/960x0/filters:no_upscale()/184363437-56a32bd53df78cf7727c26f6.jpg",
      "price": 70000,
    },
    {
      "id": 15,
      "type": "dessert",
      "name": "Bánh nướng táo",
      "img":
          "http://hiravietnam.com/wp-content/uploads/2020/09/lam-banh-tao-bang-noi-chien-khong-dau.jpg",
      "price": 65000,
    },
    {
      "id": 16,
      "type": "dessert",
      "name": "Bánh kem socola",
      "img":
          "https://cdn.dayphache.edu.vn/wp-content/uploads/2017/03/hoc-cach-lam-kem-socola.jpg",
      "price": 60000,
    },
    {
      "id": 17,
      "type": "dessert",
      "name": "Bánh mềm pudding",
      "img":
          "https://media.cooky.vn/article/s640/cooky-article-cover-b4671.jpg",
      "price": 70000,
    },
    {
      "id": 18,
      "type": "dessert",
      "name": "kem trái cây",
      "img": "https://cdn.tgdd.vn/2020/07/CookProduct/41-1200x676.jpg",
      "price": 50000,
    },
    {
      "id": 19,
      "type": "soup",
      "name": "Vang trắng 2011 Bordeaux",
      "img":
          "https://ruouvang24h.vn/wp-content/uploads/2020/04/R%C6%B0%E1%BB%A3u-Vang-Tr%E1%BA%AFng-Louis-Eschenauer-Bordeaux.jpg",
      "price": 900000,
    }
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
          result = "- ${amountDishes["main"]} món chính";
          break;
        case "side":
          result = "- ${amountDishes["side"]} món khai vị";
          break;
        case "soup":
          result = "- ${amountDishes["soup"]} rượu";
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
                        image: NetworkImage(
                            'https://static.toiimg.com/photo/msid-67973411/67973411.jpg?599235'),
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
                      'Bữa tối ngọt ngào',
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
                      'Bữa tối 2 người ấn tượng cùng với đầu bếp chuyên nghiệp.',
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
                    height: 70,
                    child: Column(
                      children: [
//Chọn số người
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                padding: EdgeInsets.fromLTRB(5, 15, 29, 0),
                                child: Text(
                                  'Số người:',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  // padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white54,
                                              width: 1.5),
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        width: 70,
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
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
                      children: [
                        /*Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 300,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: Text(
                                    "- Phí dịch vụ: code logic giá tiền",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 300,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: Text(
                                    "- Thuế: code logic giá tiền",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(9, 0, 10, 5),
                                  width: 300,
                                  alignment: Alignment.centerLeft,
                                  // margin: EdgeInsets.symmetric(horizontal: 0),
                                  child: Text(
                                    "- Phụ thu: code logic giá tiền",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),*/
                      ],
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
                        return "Món chính";
                      } else if (type == "side") {
                        return "Món khai vị";
                      } else if (type == "soup") {
                        return "Rượu";
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
