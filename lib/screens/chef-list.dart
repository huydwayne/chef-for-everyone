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
            ListTile(
              leading: Image(image: new AssetImage("assets/img/chef1.jpg")),
              title: Text("John Stuart"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            ListTile(
              leading: Image(image: new AssetImage("assets/img/chef1.jpg")),
              title: Text("Robert Alan "),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            ListTile(
              leading:
                  Image(image: new AssetImage("assets/img/chef-Img-1.jpg")),
              title: Text("Golden Ramsey"),
              subtitle: RatingValue(stars: 4.5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            ListTile(
              leading: Image(image: new AssetImage("assets/img/chef1.jpg")),
              title: Text("David Ron Sulivan"),
              subtitle: RatingValue(stars: 5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            ListTile(
              leading: Image(image: new AssetImage("assets/img/chef1.jpg")),
              title: Text("Golden Ramsey"),
              subtitle: RatingValue(stars: 3.5),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/chef-detail');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("6"),
              ),
              title: Text("List Name 6"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("7"),
              ),
              title: Text("List Name 7"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("8"),
              ),
              title: Text("List Name 8"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("9"),
              ),
              title: Text("List Name 9"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("10"),
              ),
              title: Text("List Name 10"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("11"),
              ),
              title: Text("List Name 11"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("12"),
              ),
              title: Text("List Name 12"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
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
