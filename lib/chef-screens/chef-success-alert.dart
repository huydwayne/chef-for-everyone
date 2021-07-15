import 'package:flutter/material.dart';

class ChefPopupSuccess extends StatefulWidget {
  ChefPopupSuccess({Key key}) : super(key: key);

  @override
  _ChefPopupSuccessState createState() => _ChefPopupSuccessState();
}

class _ChefPopupSuccessState extends State<ChefPopupSuccess> {
  String method = '';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 80,
              width: 80,
              //color: Colors.blue,
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd2oqQyEA2BgrjjZxHelZ3aJ7NCONRVz7Bf0D8hBR_n-vCFjb924WwQRZ8_5Db1uEf9x4&usqp=CAU'),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                'Đã Nhận Đơn',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: TextButton(
                child: Text(
                  'OK',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/chef-home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
