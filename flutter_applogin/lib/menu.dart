import 'package:flutter/material.dart';
import 'package:flutter_applogin/goback.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
    return Scaffold(
      drawer: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoBack(),
                  ),
                );
              });
            },
            child: Text('next'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('go back'),
          )
        ],
      )),
      appBar: AppBar(
        title: Text("menu"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
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
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('go back'),
            )
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
