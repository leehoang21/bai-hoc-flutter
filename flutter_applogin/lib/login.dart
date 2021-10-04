import 'package:flutter/material.dart';
import 'package:flutter_applogin/menu.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static String _tk = '', _mk = '';
  String _tk1 = 'hoang', _mk1 = '12345';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'đăng nhập',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            nhap('tài khoản', 'nhập tài khoản', 0),
            nhap('mật khẩu', 'nhập mật khẩu', 1),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var MySnackbar = const SnackBar(
                    content: Text(
                      'dang nhap thanh cong',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 20,
                      ),
                    ),
                  );
                  if (_tk == _tk1 && _mk == _mk1) {
                    ScaffoldMessenger.of(context).showSnackBar(MySnackbar);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  }
                });
              },
              child: const Text(
                'đăng nhập',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextField nhap(String label, String hint, int a) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        labelStyle: style(),
        hintText: hint,
        hintStyle: style(),
      ),
      onChanged: (value) {
        if (a == 0)
          _tk = value;
        else
          _mk = value;
      },
    );
  }

  TextStyle style() {
    return const TextStyle(
      color: Colors.green,
      fontSize: 30,
    );
  }
}
