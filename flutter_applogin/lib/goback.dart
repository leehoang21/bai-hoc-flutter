import 'package:flutter/material.dart';

class GoBack extends StatefulWidget {
  const GoBack({Key? key}) : super(key: key);

  @override
  _GoBackState createState() => _GoBackState();
}

class _GoBackState extends State<GoBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('go back'),
        ),
      ),
    );
  }
}
