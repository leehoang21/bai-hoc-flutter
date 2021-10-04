import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack, Positioned Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //trong stack(ngăn xếp) các tiện ích con chồng lên nhau (cái trong children)
      home: Stack(
        children: [
          MyContainer(),
          //dùng các lệnh left , top , right , bottom
          //,height(rộng) ,width(dài ):
          Positioned(
            child: MyContainer(),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: MyContainer(),
            bottom: 0,
            left: 0,
          ),
          Positioned(
            child: MyContainer(),
            top: 0,
            right: 0,
          ),
          Positioned(
            child: MyContainer(),
            bottom: 0,
            right: 0,
            width: 100,
            height: 100,
          ),

          //tương đương với Positioned.fill
          // Positioned(
          //   child: MyContainer(),
          //   top: 0,
          //   left: 0,
          //   right: 0,
          //   bottom: 0,
          // ),

          //Positioned.fill dung để làm tiện ích con lấp đầy stack
          //Positioned.fill(
          //  child: MyContainer(),
          //)
        ],

        //căn lề
        alignment: AlignmentDirectional.center,
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
