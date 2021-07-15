import 'package:flutter/material.dart';
import 'package:material_kit_flutter/widgets/snackbar.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: Colors.amberAccent,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.amberAccent,
                    height: 200,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            // color: Colors.red,
                            height: 150,
                            width: 150,
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: CircleAvatar(
                              minRadius: 20,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgFZRVUPoyUZc4Q04KXSFFdm4VLyV1eZEQKA&usqp=CAU'),
                            ),
                          ),
                        ),
                        Container(
                          //  color: Colors.blue,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Text(
                            'Trần Hoàng Giáng Long',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
//Địa chỉ

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 35),
                          width: 400,
                          height: 50,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.phone_android),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '+84 9682882688',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                          width: 400,
                          height: 50,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.email),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'GiangLong2668@gmail.com',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          width: 400,
                          height: 50,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.home_work_sharp),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 300,
                                child: Text(
                                  '68/2 Nguyễn Văn Linh, phường 3, Quận 7, Tp.HCM',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 1),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 20, 15, 15),
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image(
                                      image: NetworkImage(
                                          'https://cdn.iconscout.com/icon/premium/png-256-thumb/gift-voucher-2903886-2413045.png'),
                                      fit: BoxFit.cover, width: 40, height: 40,
                                    ),
                                    Text(
                                      "Voucher đã lưu",
                                      style: TextStyle(
                                          fontSize: 20,),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context,
                                            '/voucher-review-user-profile');
                                      },
                                      child: Container(
                                        width: 90,
                                        height: 25,
                                        // margin: EdgeInsets.fromLTRB(
                                        //     85, 0, 0, 0),
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrangeAccent,
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Center(
                                          child: Text(
                                            'Xem',
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
                              /*Column(
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
                              )*/
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        child:
                        TextButton(
                          onPressed: () {Navigator.pushReplacementNamed(context, '/home');},
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              'Đăng xuất',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],),

                  Container(
                    child: TextButton(
                      child: Text('Chuyển tài khoản'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/chef-home');
                      },
                    ),
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
