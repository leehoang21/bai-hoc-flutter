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
      // row có cách thuộc tính tương tự colum
      home: Column(
        // căn chỉnh theo chế độ theo chiều dọc
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // căn chỉnh theo chế độ theo chiều ngang
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //phần cố định
          OVuongXanh(),
          //căn lề dựa trên số expanded [cộng các flex của expanded lại với nhau
          //rồi chia colum (cột) thành bằng đấy phần bằng nhau (flex) sẽ là chỉ số
          //để xem expanded đó chiếm mấy phần]
          Expanded(
            child: MyContainer(),
            flex: 1,
          ),
          Expanded(
            child: MyContainer(),
            flex: 2,
          ),
          Expanded(
            child: MyContainer(),
            flex: 3,
          ),
          Expanded(
            child: MyContainer(),
            flex: 1,
          ),
          //phần cố định
          OVuongXanh(),
        ],
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

//class tao ra cac o vuong mau xanh
class OVuongXanh extends StatelessWidget {
  const OVuongXanh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}
