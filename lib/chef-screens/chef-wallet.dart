import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChefWallet extends StatefulWidget {
  ChefWallet({Key key}) : super(key: key);
  @override
  _ChefWalletStage createState() => _ChefWalletStage();
}

class _ChefWalletStage extends State<ChefWallet> {
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
              title: Text(
                "Ví Tiền",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/chef-home');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
//Chi tiết đơn hàng
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1.5),
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: ExpansionTile(
                      leading: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuUl4Q0gs0XfrTWGmohvfExgQMuCGEITEYQg&usqp=CAU',
                        fit: BoxFit.fitWidth,
                      ),
                      title: Text(
                        'Số dư hiện có',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      subtitle: Text(
                        '900.000 đ',
                        style: TextStyle(color: Colors.red),
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              onPressed: () {},
                              child: Text('Nạp Tiền Bằng Momo')),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
