import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppDem());
}

class AppDem extends StatefulWidget {
  const AppDem({Key? key}) : super(key: key);

  @override
  _AppDemState createState() => _AppDemState();
}

class _AppDemState extends State<AppDem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home ChangeNotifierProvider(
        create: (context) => Dem(),
        
      ),
    );
  }
}

class Dem extends ChangeNotifier {
  int _dem = 0;

 int get dem => _dem;

 void setDemCong1() {
   _dem++;
   notifyListeners();
 }
}
