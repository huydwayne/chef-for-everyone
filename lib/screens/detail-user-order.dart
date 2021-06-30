import 'dart:ffi';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is detail user oder'),
          backgroundColor: Colors.blue,
        ),
        body: Booking(),
      ),
    );
  }
}

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  String _selectedDate = "";
  String _selectedTime = "";

  Future<Void> _openDatePicker(BuildContext context) async {
    final DateTime d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(2021),
        //new DateTime(DateTime.now().year - 3)
        lastDate: new DateTime(2022));
    if (d != null) {
      setState(() {
        _selectedDate = new DateFormat.yMMMd('en_US').format(d).toString();
      });
    }
  }

  Future<Void> _openTimePicker(BuildContext context) async {
    final TimeOfDay t =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (t != null) {
      setState(() {
        _selectedTime = t.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Welcome Huy Bui ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Mời bạn nhập thông tin trước khi chọn món',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    hintText: "Số điện thoại liên hệ khác",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0))),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    hintText: "Địa chỉ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0))),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Ngày Thực Hiện :"),
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      _openDatePicker(context);
                    },
                  ),
                  Text(_selectedDate),
                ],
              ),
              Row(
                children: [
                  Text("Giờ bắt đầu :"),
                  IconButton(
                    icon: Icon(Icons.access_time),
                    onPressed: () {
                      _openTimePicker(context);
                    },
                  ),
                  Text(_selectedTime),
                ],
              ),
              Container(
                child: MaterialButton(
                    color: Colors.amber,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/sendotp');
                    },
                    child: Text(
                      "Hoàn Tất",
                      textAlign: TextAlign.center,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

