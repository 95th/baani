import 'package:flutter/material.dart';

void main() => runApp(BaaniApp());

class BaaniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gurbani',
      home: createApp(),
    );
  }

  Widget createApp() {
    return Scaffold(
      appBar: createAppBar(),
      body: createBody(),
    );
  }

  AppBar createAppBar() {
    return AppBar(
      title: Center(
        child: Text("Gurbani"),
      ),
    );
  }

  Widget createBody() {
    return Center(
      child: Text("Hello World"),
    );
  }
}
