import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _check = <bool>[
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  int _tien = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(
              'thu nhập hàng tháng của bạn là: ',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            RadioButton(1, 'dưới 1,5 triệu'),
            RadioButton(2, '1,5 triệu'),
            RadioButton(3, '3 triệu'),
            RadioButton(4, '5 triệu'),
            RadioButton(5, '10 triệu'),
            RadioButton(6, '20 triệu'),
            RadioButton(7, '50 triệu'),
            RadioButton(0, 'trên 50 triệu'),
          ],
        ),
      ),
    );
  }

  RadioListTile<int> RadioButton(int b, String a) {
    return RadioListTile(
      selectedTileColor: Colors.amberAccent,
      selected: _check[b],
      title: Text(a),
      value: b,
      groupValue: _tien,
      onChanged: SetTien,
    );
  }

  void SetTien(value) {
    setState(() {
      _tien = int.parse(value.toString());
      for (int i = 0; i < 8; i++) {
        if (_check[i]) _check[i] = false;
      }
      _check[_tien] = true;
    });
  }
}
