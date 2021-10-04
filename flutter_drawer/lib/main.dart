import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

void _openDrawer() {
  _scaffoldKey.currentState!.openDrawer();
}

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
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('wecome to flutter'),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              bam(context, 'OK'),
              bam(context, 'bam vao day'),
              bam(context, 'ko dc bam vao'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openDrawer();
        },
        child: Icon(Icons.add_to_home_screen),
      ),
    );
  }

  TextButton bam(BuildContext context, String txt) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('$txt'),
    );
  }
}
