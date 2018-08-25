import 'package:flutter/material.dart';
import 'package:talk_funnel/components/topics.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Talk Funnel',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Talk Funnel"),
        ),
        body: new Topics()
      )
    );
  }
}