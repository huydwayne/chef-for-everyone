import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('This is detail user oder'),
//           backgroundColor: Colors.blue,
//         ),
//         body: Booking(),
//       ),
//     );
//   }
// }

class Booking extends StatefulWidget {
  Booking({Key key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  String _selectedDate = "";
  String _selectedTime = "";

  Future<dynamic> _openDatePicker(BuildContext context) async {
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

  Future<dynamic> _openTimePicker(BuildContext context) async {
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
                'M???i b???n nh???p th??ng tin tr?????c khi ch???n m??n',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    hintText: "S??? ??i???n tho???i li??n h??? kh??c",
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
                    hintText: "?????a ch???",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0))),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Ng??y Th???c Hi???n :"),
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
                  Text("Gi??? b???t ?????u :"),
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
                      Navigator.pushReplacementNamed(
                          context, '/asian-chef-list');
                    },
                    child: Text(
                      "Ho??n T???t",
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
