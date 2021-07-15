import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class Address extends StatefulWidget {
  Address({Key key}) : super(key: key);

  @override
  _AddressPage createState() => _AddressPage();
}

class _AddressPage extends State<Address> {
  String latitudeData = "";
  String longitudeData = "";
  String country = "";
  String distric = "";

  getCurrentLocation() async {
    final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    getAddressFromCoordinates(
        Coordinates(position.latitude, position.longitude));
  }

  getAddressFromCoordinates(Coordinates cord) async {
    var addresses = await Geocoder.local.findAddressesFromCoordinates(cord);
    var first = addresses.first;
    setState(() {
      country = first.countryName;
      distric = first.addressLine;
    });
    print("${first.featureName} : ${first.addressLine}");
  }

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
                    'ĐỊA CHỈ',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
            height: 45,
            width: 420,
            //color: Colors.redAccent,
            alignment: Alignment.centerLeft,
            child: TextButton(
              child: Text(
                'Lấy Vị Trí Hiện Tại Của Bạn',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                getCurrentLocation();
              },
            ),
          ),
          Container(
            height: 65,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1.5),
            ),
            margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
            // color: Colors.redAccent,
            child: Row(
              children: [
                Text(
                  distric,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 35,
            width: 420,
            //color: Colors.redAccent,
            alignment: Alignment.centerLeft,
            child: Text(
              'Thêm Địa Chỉ Khác',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Nơi tổ chức dịch vụ',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white54, width: 1.5),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: TextButton(
              child: Text(
                'Tiếp tục',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/payment-method');
                // CHUYỂN QUA TRANG REVIEW Ở ĐÂY
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Row(
//               children: [
//                 Container(
//                   height: 25,
//                   alignment: Alignment.topLeft,
//                   color: Colors.green,
//                   child: Text(
//                     'Địa chỉ của bạn',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 )
//               ],
//             ),

// class _ConvertGeocodesToAddressState extends State<ConvertGeocodesToAddress> {
//   String latitudeData = "";
//   String longitudeData = "";
//   String country = "";
//   String distric = "";
//
//   getCurrentLocation() async {
//     final Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     getAddressFromCoordinates(
//         Coordinates(position.latitude, position.longitude));
//   }
//
//   getAddressFromCoordinates(Coordinates cord) async {
//     var addresses = await Geocoder.local.findAddressesFromCoordinates(cord);
//     var first = addresses.first;
//     setState(() {
//       country = first.countryName;
//       distric = first.addressLine;
//     });
//     print("${first.featureName} : ${first.addressLine}");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Location"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextButton(
//               child: Text("Get location"),
//               onPressed: () {
//                 getCurrentLocation();
//               },
//             ),
//             Text('Hello'),
//             // TextButton(child: Text('Click'),onPressed: () {
//             //   getAddressBaseOnLocation();
//             // },),
//             Text(distric),
//             Text(country),
//             Text(longitudeData),
//             Text(latitudeData),
//           ],
//         ),
//       ),
//     );
//   }
// }
