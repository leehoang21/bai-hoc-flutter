import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var MySnackBar = const SnackBar(
            duration: Duration(minutes: 1),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.blue,
            content: Text(
              'bay gio la may gio',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 50,
              ),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(MySnackBar);
        },
        child: Icon(Icons.access_alarm_rounded),
      ),
    );
  }
}
