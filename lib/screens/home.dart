import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

//widgets
import 'package:material_kit_flutter/widgets/navbar.dart';
import 'package:material_kit_flutter/widgets/card-horizontal.dart';
import 'package:material_kit_flutter/widgets/card-small.dart';
import 'package:material_kit_flutter/widgets/card-square.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';

final List<String> listAds = [
  'assets/img/ad2.jpg',
  'assets/img/ad1.png',
  'assets/img/bottomSlide4.jpg',
];

final List<String> listFood = [
  'assets/img/bottomSlide3.jpg',
  'assets/img/bottomSlide2.jpg',
  'assets/img/bottomSlide1.jpg',
];

final Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Bí quyết để có 1 bữa ăn ngon",
    "image":
        "https://images.unsplash.com/photo-1495461199391-8c39ab674295?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "price": "180"
  },
  "Makeup": {
    "title": "Find the cheapest deals on our range...",
    "image":
        "https://images.unsplash.com/photo-1515709980177-7a7d628c09ba?crop=entropy&w=840&h=840&fit=crop",
    "price": "220"
  },
  "Coffee": {
    "title": "Looking for Men's watches?",
    "image":
        "https://images.unsplash.com/photo-1490367532201-b9bc1dc483f6?crop=entropy&w=840&h=840&fit=crop",
    "price": "40"
  },
  "Fashion": {
    "title": "Curious Blossom Skin Care Kit.",
    "image":
        "https://images.unsplash.com/photo-1536303006682-2ee36ba49592?crop=entropy&w=840&h=840&fit=crop",
    "price": "188"
  },
  "Argon": {
    "title": "Adjust your watch to your outfit.",
    "image":
        "https://images.unsplash.com/photo-1491336477066-31156b5e4f35?crop=entropy&w=840&h=840&fit=crop",
    "price": "180"
  }
};

class MainHome extends StatefulWidget {
  MainHome({Key key}) : super(key: key);
  @override
  _MainHomeStage createState() => _MainHomeStage();
}

class _MainHomeStage extends State<MainHome> {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Trang chủ",
          rightOptions: false,
          // searchBar: true,
          // categoryOne: "Dịch vụ",
          // categoryTwo: "Thêm bài viết",
        ),
        backgroundColor: MaterialColors.bgColorScreen,
        // key: _scaffoldKey,
        drawer: MaterialDrawer(currentPage: "Home"),
        body: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                  ),
                  items: listAds
                      .map((item) => Container(
                          child: Center(
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1000))))
                      .toList(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: <Widget>[
                    TextButton(
                      child: Container(
                        child: Text(
                          'Món Á',
                          textAlign: TextAlign.center,
                        ),
                        width: 100,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage('assets/img/beef.jpg')),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/chef-list');
                      },
                    ),
                    //món á
                    // Container(
                    //   child: Column(
                    //     children: <Widget>[
                    //       new RawMaterialButton(
                    //         onPressed: () {
                    //           Navigator.pushReplacementNamed(
                    //               context, '/chef-list');
                    //         },
                    //
                    //         elevation: 2.0,
                    //         fillColor: Colors.white,
                    //         child:Container(
                    //           child: Row(
                    //             children: [
                    //               Container(
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //         padding: EdgeInsets.all(20.0),
                    //         shape: CircleBorder(),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          new RawMaterialButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/chef-list');
                            },
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Text("Món Âu"),
                            padding: EdgeInsets.all(20.0),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          new RawMaterialButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/chef-list');
                            },
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Text("Gia đình"),
                            padding: EdgeInsets.all(20.0),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                // Row(
                //   children: <Widget>[
                //     new Expanded(
                //       flex: 5,
                //       child: Column(
                //         children: <Widget>[
                //           new RawMaterialButton(
                //             onPressed: () {
                //               Navigator.pushReplacementNamed(
                //                   context, '/chef-list');
                //             },
                //             elevation: 2.0,
                //             fillColor: Colors.white,
                //             child: Text("Gia đình"),
                //             padding: EdgeInsets.all(20.0),
                //             shape: CircleBorder(),
                //           )
                //         ],
                //       ),
                //     ),
                //     // new Expanded(
                //     //   flex: 5,
                //     //   child: Column(
                //     //     children: <Widget>[
                //     //       new RawMaterialButton(
                //     //         onPressed: () {
                //     //           Navigator.pushReplacementNamed(
                //     //               context, '/chef-list');
                //     //         },
                //     //         elevation: 2.0,
                //     //         fillColor: Colors.white,
                //     //         child: Text("Sự kiện"),
                //     //         padding: EdgeInsets.all(20.0),
                //     //         shape: CircleBorder(),
                //     //       )
                //     //     ],
                //     //   ),
                //     // ),
                //   ],
                // ),
                SizedBox(
                  height: 30.0,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                  ),
                  items: listFood
                      .map((item) => Container(
                          child: Center(
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1000))))
                      .toList(),
                ),
              ],
            ),
          ),
        ));
  }
}

// class ItemList extends StatelessWidget {
//   const ItemList({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: <Widget>[
//           ItemCard(
//             svgSrc: "assets/icons/burger_beer.svg",
//             title: "Món Âu",
//
//             press: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return DetailsScreen();
//                   },
//                 ),
//               );
//             },
//           ),
//           ItemCard(
//             svgSrc: "assets/icons/chinese_noodles.svg",
//             title: "Món Á",
//
//             press: () {},
//           ),
//           ItemCard(
//             svgSrc: "assets/icons/burger_beer.svg",
//             title: "Món Âu",
//
//             press: () {},
//           )
//         ],
//       ),
//     );
//   }
// }
