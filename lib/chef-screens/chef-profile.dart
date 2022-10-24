import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//widgets
import 'chef-bottom-nav-bar.dart';
import '/constants.dart';

class ChefProfile extends StatefulWidget {
  ChefProfile({Key key}) : super(key: key);
  @override
  _ChefProfileStage createState() => _ChefProfileStage();
}

class _ChefProfileStage extends State<ChefProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/chef-home');
            },
          ),
          backgroundColor: themeColor,
          centerTitle: true,
          title: Text('Thông Tin Cá Nhân'),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgFZRVUPoyUZc4Q04KXSFFdm4VLyV1eZEQKA&usqp=CAU'),
                maxRadius: 70,
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        'Trần Hoàng Thái',
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
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        'ID: 213a3368f',
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
              margin: EdgeInsets.fromLTRB(135, 10, 0, 0),
              child: Center(
                child: chefContact(name: '(84+) 94686286 '),
              ),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
            ),
//Button Đăng xuất
            Container(
              width: 300,
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/chef-home');
                },
                child: Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    'Đăng Xuất',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
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
        width: 10,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
