import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CheftDetail extends StatefulWidget {
  CheftDetail({Key key}) : super(key: key);
  @override
  _CheftDetail createState() => _CheftDetail();
}

class _CheftDetail extends State<CheftDetail> {
  // This widget is the root of your application.
  int _count = 0;

  void _handleAddToCart(action) {
    setState(() {
      if (action == "remove") {
        _count -= 1;
      } else if (action == "add") {
        _count += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color(0xffffba08),
        appBar: AppBar(
          title: Text("This is my second "),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
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
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
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
                  children: [
                    ListTile(
                      trailing: Wrap(spacing: 5, children: <Widget>[
                        // Text(_count.toString()),
                        (_count > 0
                            ? new IconButton(
                                onPressed: () => _handleAddToCart("remove"),
                                icon: Icon(
                                  Icons.remove_circle,
                                  size: 22,
                                  color: Colors.grey,
                                ))
                            : Text("")),
                        (_count > 0 ? Text(_count.toString()) : Text("")),
                        new IconButton(
                            onPressed: () => _handleAddToCart("add"),
                            icon: Icon(
                              Icons.add_circle,
                              size: 22,
                              color: Colors.red,
                            )),
                      ]),
                      selected: true,
                      leading: Container(
                        child: Image.asset(
                          'assets/img/beef.jpg',
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text("Beef Steak With Cream Butter "),
                      subtitle: Text("20 dollar/dish"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("2"),
                      ),
                      title: Text("Pasta Domat Cheese"),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("3"),
                      ),
                      title: Text("Cream Cheese Beaf Steak MushRoom"),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("4"),
                      ),
                      title: Text("Green Pepper Drilled Salmon "),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("5"),
                      ),
                      title: Text("Steamed rice with Sauté prawns"),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("6"),
                      ),
                      title: Text("Fried noodle With Sliced Beef"),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("7"),
                      ),
                      title: Text(
                          "Noodle Milk Cheese and Sheep Meat Half Done Beef  "),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("8"),
                      ),
                      title: Text("Foie Gras"),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("9"),
                      ),
                      title: Text("Sturgeon Egg "),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("10"),
                      ),
                      title: Text("Flounder With Lemon Sauce"),
                      subtitle: Text("You can specify subtitle"),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
