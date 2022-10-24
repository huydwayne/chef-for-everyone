import 'package:flutter/material.dart';
import 'package:material_kit_flutter/constants.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

class ChefSettingTime extends StatefulWidget {
  ChefSettingTime({Key key}) : super(key: key);

  @override
  _ChefSettingTimeState createState() => _ChefSettingTimeState();
}

class _ChefSettingTimeState extends State<ChefSettingTime> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/chef-home');
                  },
                  iconSize: 30,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  //  color: Colors.green,
                  width: 220,
                  child: Center(
                    child: Text(
                      'Đăng ký ca nghỉ',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
              //color: Colors.green,
              width: 100,
              child: Text(
                'Thứ 2: 10-08-2022',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              value: 1,
              title: Text("am"),
              subtitle: Text("6h00 : 12h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            RadioListTile(
              value: 1,
              title: Text("pm"),
              subtitle: Text("13h00 : 18h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),

            //thứ 3
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
              //color: Colors.green,
              width: 100,
              child: Text(
                'Thứ 3: 11-08-2022',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              value: 1,
              title: Text("am"),
              subtitle: Text("6h00 : 12h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            RadioListTile(
              value: 1,
              title: Text("pm"),
              subtitle: Text("13h00 : 18h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),

            //Thứ 4
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
              //color: Colors.green,
              width: 100,
              child: Text(
                'Thứ 4: 12-08-2022',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              value: 1,
              title: Text("am"),
              subtitle: Text("6h00 : 12h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            RadioListTile(
              value: 1,
              title: Text("pm"),
              subtitle: Text("13h00 : 18h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),

            //Thứ 5
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
              //color: Colors.green,
              width: 100,
              child: Text(
                'Thứ 5: 13-08-2022',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              value: 1,
              title: Text("am"),
              subtitle: Text("6h00 : 12h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            RadioListTile(
              value: 1,
              title: Text("pm"),
              subtitle: Text("13h00 : 18h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),

            //Thứ 6
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
              //color: Colors.green,
              width: 100,
              child: Text(
                'Thứ 6: 14-08-2022',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              value: 1,
              title: Text("am"),
              subtitle: Text("6h00 : 12h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            RadioListTile(
              value: 1,
              title: Text("pm"),
              subtitle: Text("13h00 : 18h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),

            //Thứ 7
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
              //color: Colors.green,
              width: 100,
              child: Text(
                'Thứ 7: 15-08-2022',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              value: 1,
              title: Text("am"),
              subtitle: Text("6h00 : 12h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            RadioListTile(
              value: 1,
              title: Text("pm"),
              subtitle: Text("13h00 : 18h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),

            //Chủ Nhật
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
              //color: Colors.green,
              width: 100,
              child: Text(
                'Chủ nhật: 16-08-2022',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              value: 1,
              title: Text("am"),
              subtitle: Text("6h00 : 12h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            RadioListTile(
              value: 1,
              title: Text("pm"),
              subtitle: Text("13h00 : 18h00"),
              onChanged: (val) {},
              activeColor: Colors.red,
              // secondary: OutlineButton(
              //   child: Text("Say Hi"),
              //   onPressed: () {
              //     print("Say Hello");
              //   },
              // ),
              selected: true,
            ),
            FloatingActionButton(
              isExtended: true,
              child: Text('Xác nhận'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/chef-home');
              },
            )
            // Container(
            //   height: 50,
            //   width: 200,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.orange, width: 1.5),
            //     color: Colors.amberAccent,
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(20),
            //     ),
            //   ),
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
            //   child: TextButton(
            //     child: Text(
            //       'Tiếp tục',
            //       style: TextStyle(color: Colors.blue, fontSize: 20),
            //     ),
            //     onPressed: () {
            //       Navigator.pushReplacementNamed(context, '/address');
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
