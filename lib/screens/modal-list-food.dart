import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalList extends StatefulWidget {
  ModalList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ModalListStage createState() => _ModalListStage();
}

class _ModalListStage extends State<ModalList> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Click Me'),
          onPressed: () {
            _bottomSheet(context);
          },
        ),
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        return Container(
          child: ListView(
            children: [
              Container(
                color: Colors.amber,
                padding: EdgeInsets.all(5),
                width: 400,
                height: 50,
                child: Text(
                  'Món Mặn',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              CheckboxListTile(
                value: isClick,
                onChanged: (value) {
                  setState(() {
                    isClick = value;
                  });
                },
                title: Text('Lẩu gà ớt hiểm'),
                subtitle: Text('150.000'),
                secondary: Container(
                  width: 150,
                  height: 100,
                  child: Image.network(
                    'https://media.cooky.vn/recipe/g5/43727/s480x480/cooky-recipe-636792145011468059.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CheckboxListTile(
                value: isClick,
                onChanged: (value) {
                  setState(() {
                    isClick = value;
                  });
                },
                title: Text('Lẩu Thái'),
                subtitle: Text('180.000'),
                secondary: Container(
                  width: 150,
                  height: 100,
                  child: Image.network(
                    'https://cdn.daotaobeptruong.vn/wp-content/uploads/2020/10/cach-nau-nuoc-leo-lau-thai.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CheckboxListTile(
                value: isClick,
                onChanged: (value) {
                  setState(() {
                    isClick = value;
                  });
                },
                title: Text('Lẩu hải sản'),
                subtitle: Text('220.000'),
                secondary: Container(
                  width: 150,
                  height: 100,
                  child: Image.network(
                    'https://i.ytimg.com/vi/p1ejp7z4mc4/hqdefault.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CheckboxListTile(
                value: isClick,
                onChanged: (value) {
                  setState(() {
                    isClick = value;
                  });
                },
                title: Text('Lẩu bò'),
                subtitle: Text('150.000'),
                secondary: Container(
                  width: 150,
                  height: 100,
                  child: Image.network(
                    'https://media.travelmag.vn/files/huyennguyen/2020/09/18/z2083468830124_ba085d84b0751e7180c870bd2c9dba1a-2353.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CheckboxListTile(
                value: isClick,
                onChanged: (value) {
                  setState(() {
                    isClick = value;
                  });
                },
                title: Text('Lẩu Tứ Xuyên'),
                subtitle: Text('300.000'),
                secondary: Container(
                  width: 150,
                  height: 100,
                  child: Image.network(
                    'https://cdn.tgdd.vn/2020/06/CookRecipe/GalleryStep/thanh-pham-145.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CheckboxListTile(
                value: isClick,
                onChanged: (value) {
                  setState(() {
                    isClick = value;
                  });
                },
                title: Text('Lẩu nấm cay'),
                subtitle: Text('150.000'),
                secondary: Container(
                  width: 150,
                  height: 100,
                  child: Image.network(
                    'https://i.ytimg.com/vi/TRlJjFaKkH8/maxresdefault.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CheckboxListTile(
                value: isClick,
                onChanged: (value) {
                  setState(() {
                    isClick = value;
                  });
                },
                title: Text('Lẩu dê'),
                subtitle: Text('170.000'),
                secondary: Container(
                  width: 150,
                  height: 100,
                  child: Image.network(
                    'https://toplist.vn/images/800px/lau-de-lam-son-152666.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
