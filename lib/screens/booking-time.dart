import 'package:flutter/material.dart';

class BookingTime extends StatefulWidget {
  BookingTime({Key key}) : super(key: key);

  @override
  _BookingTimePage createState() => _BookingTimePage();
}

class _BookingTimePage extends State<BookingTime> {
  //bool isClickable = true;

  // void clickFunction() {
  //   setState(() {
  //     isClickable = false;
  //   });
  // }
  //
  // String getTime() {
  //   var dt = DateTime.now();
  //   String formattedTime = DateFormat('kk:mm:a').format(dt);
  //
  //   String tmp = DateFormat('kk:mm').format(dt);
  //   // DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  //   // String dt = dateFormat.format(DateTime.now());
  //   return formattedTime;
  // }

  // double getTime_2() {
  //   var dt = DateTime.now();
  //   String tmp = DateFormat('kk:mm').format(dt);
  //   String a = tmp.replaceAll(':', '.');
  //   double num = double.parse(a);
  //   print(num);
  //   return num;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Container(
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/select-service-detail');
                },
                iconSize: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                //  color: Colors.green,
                width: 220,
                child: Center(
                  child: Text(
                    'Đặt Lịch Nấu',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
            width: 400,
            height: 40,
            child: Text(
              'Bạn muốn dịch vụ bắt đầu ngày nào ?',
              style: TextStyle(fontSize: 18),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: [
              Container(
                color: Colors.grey,
                margin: EdgeInsets.all(5),
                child: TextButton(
                  child: Container(
                    width: 50,
                    child: Text('Thứ 6 10-07'),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                color: Colors.amber,
                margin: EdgeInsets.all(5),
                child: TextButton(
                  child: Container(
                    width: 50,
                    child: Text('Thứ 7 11-07'),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                color: Colors.grey,
                margin: EdgeInsets.all(5),
                child: TextButton(
                  child: Container(
                    width: 60,
                    child: Text('Chủ Nhật 12-07'),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
            width: 400,
            height: 40,
            child: Text(
              'Thời gian bắt đầu ?',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('08:00 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('08:30 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.amber,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('09:00 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('09:30 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('10:00 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('10:30 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('11:00 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('11h30 AM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('12:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('12h30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('01:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('01:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('02:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('02:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('03:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('03:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('04:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('04:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('05:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('05:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('06:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('06:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('07:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('07:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('08:00 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('08:30 PM'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: TextButton(
                    child: Text('09:00 PM'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 1.5),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
            child: TextButton(
              child: Text(
                'Tiếp tục',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/address');
              },
            ),
          ),
        ],
      ),
    );
  }
}
