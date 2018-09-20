import 'package:flutter/material.dart';
import 'package:http/http.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() {

    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Text('$counter'),
            floatingActionButton: FloatingActionButton(
              onPressed:  fetchImage,
              child: Icon(Icons.add),
            ),
            appBar: AppBar(title: Text('Lets see some images!'))));
  }
}
