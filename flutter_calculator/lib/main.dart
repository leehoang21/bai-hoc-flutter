import 'dart:ui';

import 'package:flutter/material.dart';

String disPlay(List a, double kq, bool x, bool y) {
  String b = ' ';
  if (kq != 0 && x == true && y == true) {
    b = 'Ans';
    for (int i = 1; i < a.length; i++) {
      b += a[i];
    }
  } else {
    for (int i = 0; i < a.length; i++) {
      b += a[i];
    }
  }
  return b;
}

double KetQua(double kq, double bien, String k) {
  if (k != ' ') {
    if (k == '+') {
      kq = kq + bien;
    }
    if (k == '-') {
      kq = kq - bien;
    }
    if (k == 'x') {
      kq = kq * bien;
    }
    if (k == '/') {
      kq = kq / bien;
    }
  }
  return kq;
}

double tinh(List a) {
  double kq = 0, bien = 0;
  bool check = false, c = false;
  String k = ' ';
  int i = 0, j = 10;
  if (a.length != 0) {
    do {
      if (a[i] == '.')
        c = true;
      else if (a[i] == '=') {
        kq = KetQua(kq, bien, k);
        k = ' ';
      } else if (a[i] == '+') {
        c = false;
        check = true;
        kq = KetQua(kq, bien, k);
        k = '+';
        bien = 0;
      } else if (a[i] == '-') {
        c = false;
        check = true;
        kq = KetQua(kq, bien, k);
        k = '-';
        bien = 0;
      } else if (a[i] == 'x') {
        c = false;
        check = true;
        kq = KetQua(kq, bien, k);
        k = 'x';
        bien = 0;
      } else if (a[i] == '/') {
        c = false;
        check = true;
        kq = KetQua(kq, bien, k);
        k = '/';
        bien = 0;
      } else {
        if (!check) {
          if (!c) {
            kq = kq * 10 + double.parse(a[i]);
            j = 10;
          } else {
            kq = kq + (double.parse(a[i]) / j);
            j *= 10;
          }
        } else {
          if (!c) {
            bien = bien * 10 + double.parse(a[i]);
            j = 10;
          } else {
            bien = bien + (double.parse(a[i]) / j);
            j *= 10;
          }
        }
      }
      i++;
    } while (i < a.length);
  }
  return kq;
}

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
  List _HienThi = <String>[];
  int _b = 0;
  static double h = 0;
  static bool f = false, flag = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //lam cho app dep hon
      home: Scaffold(
        backgroundColor: Colors.black,
        //thanh điều hướng
        appBar: AppBar(
          //in ra mô tả về app
          title: Text('Flutter Calculator'),
        ),
        // căn giữa text bên dưới

        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: 2, left: 2, top: 2, right: 2),
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Text(
                          '${disPlay(_HienThi, h, flag, f)}',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: 2, left: 2, top: 2, right: 2),
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Text(
                          '$h',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Dong('7', '8', '9', '/'),
                    flex: 1,
                  ),
                  Expanded(
                    child: Dong('4', '5', '6', 'x'),
                    flex: 1,
                  ),
                  Expanded(
                    child: Dong('1', '2', '3', '-'),
                    flex: 1,
                  ),
                  Expanded(
                    child: DongCoDauBang(),
                    flex: 1,
                  ),
                  Expanded(
                    child: DongXoa(),
                    flex: 1,
                  ),
                ],
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  Row DongXoa() {
    return Row(
      children: [
        Expanded(
          child: Delete(),
          flex: 1,
        ),
        Expanded(
          child: Clear(),
          flex: 1,
        ),
      ],
    );
  }

  Row DongCoDauBang() {
    return Row(
      children: [
        Expanded(
          child: Ovuong('.'),
          flex: 1,
        ),
        Expanded(
          child: Ovuong('0'),
          flex: 1,
        ),
        Expanded(
          child: DauBang(),
          flex: 1,
        ),
        Expanded(
          child: Ovuong('+'),
          flex: 1,
        ),
      ],
    );
  }

  Row Dong(String a, String b, String c, String d) {
    return Row(
      children: [
        Expanded(
          child: Ovuong(a),
          flex: 1,
        ),
        Expanded(
          child: Ovuong(b),
          flex: 1,
        ),
        Expanded(
          child: Ovuong(c),
          flex: 1,
        ),
        Expanded(
          child: Ovuong(d, flag),
          flex: 1,
        ),
      ],
    );
  }

  Container DauBang() {
    return Container(
      margin: EdgeInsets.only(bottom: 2, left: 2, top: 2, right: 2),
      alignment: Alignment.center,
      color: Colors.white,
      child: TextButton(
          onPressed: () {
            setState(() {
              _HienThi.add('=');
              h = tinh(_HienThi);
              flag = true;
            });
          },
          child: Text(
            '=',
            style: TextStyle(fontSize: 50),
          )),
    );
  }

  Container Delete() {
    return Container(
      margin: EdgeInsets.only(bottom: 2, left: 2, top: 2, right: 2),
      alignment: Alignment.center,
      color: Colors.white,
      child: TextButton(
        child: Text(
          'delete',
          style: TextStyle(fontSize: 50),
        ),
        onPressed: () {
          setState(() {
            if (_HienThi.length > 0) _HienThi.removeAt(_HienThi.length - 1);
          });
        },
      ),
    );
  }

  Container Clear() {
    return Container(
      margin: EdgeInsets.only(bottom: 2, left: 2, top: 2, right: 2),
      alignment: Alignment.center,
      color: Colors.white,
      child: TextButton(
        child: Text(
          'clear',
          style: TextStyle(fontSize: 50),
        ),
        onPressed: () {
          setState(() {
            _HienThi.clear();
            h = 0;
            flag = false;
            f = false;
          });
        },
      ),
    );
  }

  Container Ovuong(String t, [bool flag = false]) {
    return Container(
      margin: EdgeInsets.only(bottom: 2, left: 2, top: 2, right: 2),
      alignment: Alignment.center,
      color: Colors.white,
      child: TextButton(
        child: Text(
          '$t',
          style: TextStyle(fontSize: 50),
        ),
        onPressed: () {
          setState(() {
            if (flag) {
              f = true;
              _HienThi.clear();
              _HienThi.add('$h');
            }
            _HienThi.add(t);
          });
        },
      ),
    );
  }
}
