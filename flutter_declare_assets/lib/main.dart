import 'package:flutter/material.dart';
import 'package:flutter_declare_assets/app_fonts.dart';
import 'package:flutter_declare_assets/app_UI.dart';
import 'package:flutter_declare_assets/app_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AppUI.iconsAndroid_24}'),
      ),
      body: Container(
        child: Text(
          'wecome',
          //style: AppStyle.t1,
          //cach thay doi appstyle co san
          style: AppStyle.t1.copyWith(color: Colors.blueGrey),
        ),
        //child: Image.asset('${AppUI.imageLM}'),
      ),
    );
  }
}

// đường dẫn các assets
// class AppUI {
//   static final String imagePath = 'assets/images/';
//   static final String iconsPath = 'assets/icons/';
//   static final String fontsPath = 'assets/fonts/';

//   static final String iconsAndroid_24 = iconsPath + 'ic-android-24.png';
//   static final String imageLM = imagePath + 'im.9_10_13_lol14.jpg';
// }
