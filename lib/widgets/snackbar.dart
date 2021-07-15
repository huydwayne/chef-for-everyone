import 'package:flutter/material.dart';
import 'package:material_kit_flutter/screens/home.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Bạn có chắc chắn muốn hủy dịch vụ ?'),
            action: SnackBarAction(
              label: 'Hủy dịch vụ',
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new MainHome(),
                  ),
                );
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Hủy dịch vụ',style: TextStyle(
            fontSize: 16, color: Colors.black),),
      ),
    );
  }
}