import 'dart:io';

import 'package:flutter/material.dart';

class ChefList extends StatefulWidget {
  ChefList({Key key}) : super(key: key);
  @override
  _ChefListStage createState() => _ChefListStage();
}

Row RatingValue({double stars}) {
  final children = <Widget>[];
  var starLeft = stars;
  for (var i = 0; i < stars; i++) {
    children.add(Image.asset(
      "assets/img/star.png",
      height: 15,
    ));
    starLeft = starLeft - 1;
  }
  if (starLeft == -0.5) {
    children.removeAt(0);
    children.add(Image.asset(
      "assets/img/half_star.png",
      height: 15,
    ));
  }
  return Row(
    children: children,
  );
}

class _ChefListStage extends State<ChefList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Danh sách đầu bếp Âu gần bạn"),
        ),
        body: ListView(
          padding: EdgeInsets.all(0),
          children: [
            //chef 1
            ListTile(
              leading: Container(
                height: 500,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://3.bp.blogspot.com/-JpzRXm28kig/W-T1_Nk2E0I/AAAAAAAAOE4/yojKR7JtOHAb8AmzbsVWU26NH_3DiVV4wCLcBGAs/s1600/masterchef-404-xa-dan-14.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Đầu bếp John Hải"),
              subtitle: RatingValue(stars: 5),
              trailing: Text("2 km"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 2
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.hoidaubepaau.com/wp-content/uploads/2015/12/david-thai.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Đầu bếp David Thái"),
              subtitle: RatingValue(stars: 5),
              trailing: Text("7 km"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            // chef 3
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cafefcdn.com/2019/4/7/photo-1-15546000948151579336019.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Đầu bếp Christine Hà"),
              subtitle: RatingValue(stars: 5),
              trailing: Text("8 km"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            // chef 4
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cafefcdn.com/thumb_w/650/2018/3/21/photo1521601954915-15216019549151787812293.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Đầu bếp Luke Nguyễn"),
              subtitle: RatingValue(stars: 5),
              trailing: Text("12 km"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 5
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://tomimarkets.net/wp-content/uploads/2020/07/dau-bep-Phan-Ton-Tinh-Hai-2-Tomimarkets.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Đầu bếp Phan Tôn Tịnh Hải"),
              subtitle: RatingValue(stars: 5),
              trailing: Text("21 km"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text("HuyBui@gmail.com"),
                accountName: Text("HuyBui"),
                currentAccountPicture: CircleAvatar(
                  child: Text("P"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Categories"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.add_to_photos),
                title: Text("Add Your Group"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About Us"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share with Friends"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: Text("Rate and Review"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.flag),
                title: Text("Privacy Policy"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
