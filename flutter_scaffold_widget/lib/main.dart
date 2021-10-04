import 'dart:io';
import 'dart:ui';

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
        home: Scaffold(
          // thanh tiêu đề
          appBar: AppBar(title: Text('hello')),

          //phần thân chương trình
          body: Center(
            // có thể ghi nhiều text
            child: Text.rich(
              TextSpan(
                  text: 'hello',
                  style: TextStyle(
                    color: Colors.blue[300],
                    //kích thước chữ
                    fontSize: 50,
                    //kiểu chữ
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' scanffold',
                      style: TextStyle(
                        color: Colors.black45,
                        //kích thước chữ
                        fontSize: 50,
                      ),
                    ),
                    TextSpan(
                      text: ' widget',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        //kích thước chữ
                        fontSize: 50,
                      ),
                    )
                  ]),
            ),
          ),

          // biểu tượng
          floatingActionButton: FloatingActionButton(
            //tạo nút bấm dạng text
            //child: ElevatedButton(onPressed: () {}, child: Text('bam vao day')),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.mobile_friendly_rounded),
              label: Text(
                'bam vao day',
              ),
            ),
            onPressed: () {},
          ),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
