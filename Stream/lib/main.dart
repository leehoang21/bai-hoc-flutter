import 'package:flutter/material.dart';
import 'package:stream/counter.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyHomePage> {
  MyStream myStream = MyStream();

  @override
  void dispose() {
    myStream.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    myStream.counterStream.listen((event) {
      // ignore: avoid_print
      print(event.toString());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: myStream.counterStream,
              builder: (context, snapshot) => Text(
                snapshot.hasData ? snapshot.data.toString() : "0",
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myStream.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
