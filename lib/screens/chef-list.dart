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
          title: Text("Danh sách đầu bếp "),
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
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
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
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
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
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
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
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
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
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 6
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 7
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 8
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 9
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 10
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 11
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            //chef 12
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
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
                accountEmail: Text("Akram.aic193@Gmail.com"),
                accountName: Text("Akram Chauhan"),
                currentAccountPicture: CircleAvatar(
                  child: Text("P"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
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
