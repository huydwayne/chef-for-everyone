import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PakageService extends StatefulWidget {
  PakageService({Key key}) : super(key: key);

  @override
  _PakageServiceState createState() => _PakageServiceState();
}

class _PakageServiceState extends State<PakageService> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: Colors.amber,
              expandedHeight: 50,
              floating: true,
              pinned: true,
              title: Text(
                'Món ngon mỗi ngày',
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new ExactAssetImage ("assets/img/servicebutton1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                    //width: 100,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          "Chuyên gia tại bếp nhà",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white54, width: 1.5),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        margin: EdgeInsets.fromLTRB(15, 40, 15, 15),
                        width: 400,
                        height: 300,
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 400,
                                child: Image(
                                  image: new ExactAssetImage("assets/img/service1.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.fromLTRB(10,0,0,0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Đầu bếp cho bữa ăn",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacementNamed(
                                                  context,
                                                  '/select-service-detail');
                                            },
                                            child: Container(
                                              width: 90,
                                              height: 25,
                                              // margin: EdgeInsets.fromLTRB(
                                              //     85, 0, 0, 0),
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Center(
                                                child: Text(
                                                  'Chọn',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          // margin:
                                          //     EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          width: 330,
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            "Bạn quá bận để vào bếp? Hãy để cho những đầu bếp chuyên nghiệp phục vụ bạn và gia đình bạn.",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // BỮA TỐI NGỌT NGÀO
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white54, width: 1.5),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                        width: 400,
                        height: 300,
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: 400,
                                child: Image(
                                  image: NetworkImage(
                                      'https://static.toiimg.com/photo/msid-67973411/67973411.jpg?599235'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Bữa tối ngọt ngào",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacementNamed(
                                                  context,
                                                  '/date-service-detail');
                                            },
                                            child: Container(
                                              width: 90,
                                              height: 25,
                                              // margin: EdgeInsets.fromLTRB(
                                              //     85, 0, 0, 0),
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Center(
                                                child: Text(
                                                  'Chọn',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          // margin:
                                          //     EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          width: 330,
                                          child: Text(
                                            " Bữa tối 2 người ấn tượng với đầu bếp chuyên nghiệp ",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class listService extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(),
//
//   }
//
// }

class MyaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Blur Image in Flutter - Fluttercorner"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/707915/pexels-photo-707915.jpeg"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
