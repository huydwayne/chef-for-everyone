import 'package:flutter/material.dart';

class ChefList extends StatefulWidget {
  ChefList({Key key}) : super(key: key);
  @override
  _ChefListStage createState() => _ChefListStage();
}

class _ChefListStage extends State<ChefList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List view Example - Flutterian"),
        ),
        body: ListView(
          padding: EdgeInsets.all(0),
          children: [
            ListTile(
              selected: true,
              leading: CircleAvatar(
                child: Text("1"),
              ),
              title: Text("List Name 1"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("2"),
              ),
              title: Text("List Name 2"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading:
                  Image(image: new AssetImage("assets/img/chef-Img-1.jpg")),
              title: Text("Golden Ramsey"),
              subtitle: Text("Top 10 chef of the world"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("4"),
              ),
              title: Text("List Name 4"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("5"),
              ),
              title: Text("List Name 5"),
              subtitle: Text("You can specify subtitle"),
              onTap: () {},
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
