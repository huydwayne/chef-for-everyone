import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PartyService extends StatefulWidget {
  PartyService({Key key}) : super(key: key);

  @override
  _PartyServiceState createState() => _PartyServiceState();
}

class _PartyServiceState extends State<PartyService> {
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
                'Tiệc tại gia cùng bạn bè',
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
                        image: NetworkImage(
                            'https://diystartupnews.com/wp-content/uploads/2019/06/event-chef.jpg'),
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
                          "Đầu bếp chuyên nghiệp cho các bữa tiệc tại nhà",
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
                                  image: NetworkImage(
                                      'https://www.lemoncreekwinery.com/wp-content/uploads/2021/01/wine-and-food-1-846x565.jpg'),
                                  // https://www.ties.com/blog/wp-content/uploads/2016/08/pairing_wine_with_food_01.jpg
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(15,0,0,0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Đầu bếp cho bữa tiệc của bạn",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacementNamed(
                                                  context,
                                                  '/party-service-detail');
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
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          width: 330,
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            "Hãy để những đầu bếp chuyên nghiệp của chúng tôi nâng tầm bữa tiệc ngay tại ngôi nhà của bạn.",
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
