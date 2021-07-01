import 'package:flutter/material.dart';

class AsianChefList extends StatefulWidget {
  AsianChefList({Key key}) : super(key: key);
  @override
  _AsianChefListStage createState() => _AsianChefListStage();
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

class _AsianChefListStage extends State<AsianChefList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Danh sách đầu bếp Á gần bạn"),
        ),
        body: ListView(
          padding: EdgeInsets.all(0),
          children: [
            //chef 1
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.lovepik.com/element/40065/0452.png_860.png"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Đầu bếp Martin Yun"),
              trailing: Text("5 km"),
              subtitle: RatingValue(stars: 5),
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
                      "https://vtv1.mediacdn.vn/2017/charlesphan-1509958381530.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Dương Huy Khải"),
              trailing: Text("5.5 km"),
              subtitle: RatingValue(stars: 4.5),
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
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjLX1wxTEdrGsqzim21bnfxStT9j-KgB62lw&usqp=CAU"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Hoàng Hồng"),
              trailing: Text("8 km"),
              subtitle: RatingValue(stars: 4),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),

            //chef 10
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
              title: Text("Đầu bếp Phạm Tuấn Hải"),
              subtitle: RatingValue(stars: 5),
              trailing: Text("10 km"),
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
              trailing: Text("12 km"),
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
                      "https://dep.com.vn/wp-content/uploads/2019/06/deponline-takuchef-rj-8.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("Đầu bếp Kento Nguyễn"),
              subtitle: RatingValue(stars: 4.5),
              trailing: Text("15 km"),
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
              subtitle: RatingValue(stars: 4),
              trailing: Text("16.2 km"),
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
              trailing: Text("19 km"),
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
                accountName: Text("Huy Bui"),
                currentAccountPicture: CircleAvatar(
                  child: Text("HB"),
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
