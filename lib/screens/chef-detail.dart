import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:badges/badges.dart';

class CheftDetail extends StatefulWidget {
  CheftDetail({Key key}) : super(key: key);
  @override
  _CheftDetail createState() => _CheftDetail();
}

class _CheftDetail extends State<CheftDetail> {
  // This widget is the root of your application.
  int _totalAmount = 0;
  int _totalPrice = 0;

  List<Map<String, dynamic>> _menu = [
    {
      "id": 1,
      "name": "Beef Steak with Cream Butter",
      "img": "assets/img/beef.jpg",
      "price": 20,
      "amount": 0,
    },
    {
      "id": 2,
      "name": "Beef Steak",
      "img": "assets/img/beef.jpg",
      "price": 40,
      "amount": 0,
    }
  ];

  List<Widget> getList() {
    List<Widget> menuData = _menu
        .map(
          (item) => ListTile(
            trailing: Wrap(spacing: 2, children: <Widget>[
              // Text(_count.toString()),
              (item["amount"] > 0
                  ? new IconButton(
                      onPressed: () => _handleAddToCart(item["id"], "remove"),
                      icon: Icon(
                        Icons.remove_circle,
                        size: 22,
                        color: Colors.grey,
                      ))
                  : Text('')),
              (item["amount"] > 0 ? Text(item["amount"].toString()) : Text('')),
              new IconButton(
                  onPressed: () => _handleAddToCart(item["id"], "add"),
                  icon: Icon(
                    Icons.add_circle,
                    size: 22,
                    color: Colors.orange,
                  )),
            ]),
            selected: true,
            leading: Container(
              child: Image.asset(
                item["img"],
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            title: Text(item["name"]),
            subtitle: Text("${item["price"]}\$/dish"),
          ),
        )
        .toList();

    return menuData;
  }

  void _handleAddToCart(id, action) {
    final index = _menu.indexWhere((element) => element["id"] == id);
    setState(() {
      if (action == "remove") {
        _menu[index]["amount"]--;
        _totalAmount--;
        _totalPrice -= _menu[index]["price"];
      } else if (action == "add") {
        _menu[index]["amount"]++;
        _totalAmount++;
        _totalPrice += _menu[index]["price"];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color(0xffffba08),
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/chef.jpg'),
                maxRadius: 70,
              ),
            ),
            // CONTAINER NÀY CHỨA TÊN
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        'Gorden Ramsey',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
            ),
            Container(
              child: Container(
                height: 200,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(0)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    chefLocation(name: "790 South Street London SW61 3RM"),
                    chefContact(name: '(84+) 94686286 - 923868268'),
                    chefOnlineContact(name: 'https/GordenGangz.us.com'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: getList(),
                ),
              ),
            ),
            //Row này dành cho phần CART NAVIGATION
            (_totalAmount != 0
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Cái này hiển thị cho số lượng hàng có trong CART
                      SizedBox(
                        width: 10,
                      ),
                      Badge(
                        padding: EdgeInsets.all(5),
                        badgeContent: Text(_totalAmount.toString()),
                        child: Container(
                          child: Icon(
                            Icons.fastfood_sharp,
                            size: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${_totalPrice.toString()}\$",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      //Này là Button HOÀN TẤT
                      TextButton(
                        child: Container(
                          child: Text(
                            'Hoàn Tất',
                            textAlign: TextAlign.center,
                          ),
                          width: 100,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.amber,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  )
                : Text(""))
          ],
        ),
      ),
    );
  }
}

// Này để hiển thị thông tin liên lạc của CHEF
Row chefLocation({String name}) {
  return Row(
    children: [
      Icon(
        Icons.location_on,
        color: Colors.green,
      ),
      SizedBox(
        height: 50,
        width: 30,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      )
    ],
  );
}

Row chefContact({String name}) {
  return Row(
    children: [
      Icon(
        Icons.phone,
        color: Colors.green,
      ),
      SizedBox(
        height: 50,
        width: 30,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Row chefOnlineContact({String name}) {
  return Row(
    children: [
      Icon(
        Icons.book_online,
        color: Colors.green,
      ),
      SizedBox(
        height: 50,
        width: 30,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      )
    ],
  );
}
