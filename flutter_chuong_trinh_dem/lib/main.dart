import 'package:flutter/material.dart';

void main(List<String> args) {
  //chạy app
  runApp(counterApp());
}

class counterApp extends StatefulWidget {
  @override
  _counterAppState createState() => _counterAppState();
}

class _counterAppState extends State<counterApp> {
  //bien dem
  int _dem = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //lam cho app dep hon
      home: Scaffold(
        //thanh điều hướng
        appBar: AppBar(
          //in ra mô tả về app
          title: Text('chương trình đếm'),
        ),
        // căn giữa text bên dưới
        body: Center(
          child: Text(
            //in ra màn hình app            
            for(int i=0;i<5;i++)
            {
              '$_dem'
            },
            //kiểu chữ
            style: TextStyle(
              //kích thước chữ
              fontSize: 50,
              //kiểu chữ
              fontWeight: FontWeight.bold,
              //màu chữ
              color: Colors.red[300],
            ),
          ),
        ),
        //phần tạo biểu tượng
        floatingActionButton: FloatingActionButton(
            //biểu tượng
            child: IconButton(
              //màu biểu tượng
              color: Colors.orange,
              //hình
              icon: Icon(
                //hình +1
                Icons.plus_one,
              ),
              onPressed: () {
                //set các thay đổi trong phần thân của app
                setState(() {
                  //tăng biến đếm
                  _dem++;
                });
              },
            ),
            onPressed: () {}),
      ),
    );
  }
}
