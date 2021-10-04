import 'package:flutter/material.dart';

void main(List<String> args) {
  //chạy app
  runApp(wrapApp());
}

class wrapApp extends StatefulWidget {
  @override
  _wrapAppState createState() => _wrapAppState();
}

class _wrapAppState extends State<wrapApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //lam cho app dep hon
      home: Scaffold(
        //thanh điều hướng
        appBar: AppBar(
          //in ra mô tả về app
          title: Text('wrap widget'),
        ),
        // căn giữa text bên dưới
        body: Center(
          //tự động xuống dòng nếu tràn giao diện
          child: Wrap(
            //khoảng cách giữa các dòng
            runSpacing: 50,
            //hướng  (theo hàng or cột)
            direction: Axis.vertical,
            //kiểu sắp xếp trên hàng or cột
            alignment: WrapAlignment.spaceBetween,
            //khoảng cách giữa cách cột
            spacing: 20,
            //tao ra cac o vuong mau do
            children: <Widget>[
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

//class tao ra cac o vuong mau do
class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}
