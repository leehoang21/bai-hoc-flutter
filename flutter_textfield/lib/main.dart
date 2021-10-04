import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'đăng nhập',
          ),
        ),
      ),
      body: const TextField(
        decoration: InputDecoration(
          helperText: 'ban nhap',
          helperStyle: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
          labelText: 'tài khoản',
          labelStyle: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
          hintText: 'nhap tai khoan',
          hintStyle: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
