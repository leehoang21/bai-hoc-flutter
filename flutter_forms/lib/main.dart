import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final _FormKey = GlobalKey<FormState>();
    // ignore: non_constant_identifier_names
    TextEditingController Mycontroller = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Form(
              key: _FormKey,
              child: TextFormField(
                controller: Mycontroller,
                validator: (value) {
                  if (value!.isEmpty) return 'ban phai nhap ';
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: 'dia chi',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                    )),
              )),
          ElevatedButton(
              onPressed: () {
                print(Mycontroller.text);
              },
              child: Text('nop'))
        ],
      ),
    );
  }
}
