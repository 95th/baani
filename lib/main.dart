import 'package:baani/baani.dart';
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
}

Widget createApp() {
  return Scaffold(
    appBar: createAppBar(),
    body: BaaniSources(),
  );
}

AppBar createAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.music_note),
        Text("Gurbani Live"),
      ],
    ),
    centerTitle: true,
    backgroundColor: Colors.red,
  );
}

