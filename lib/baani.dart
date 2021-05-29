import 'package:flutter/material.dart';

class BaaniSource {
  final String title;

  const BaaniSource(this.title);
}

const data = <BaaniSource>[
  BaaniSource("Shri Harmandir Sahib"),
  BaaniSource("Shri Bangla Sahib"),
  BaaniSource("Shri Dukh Nivaran Sahib"),
];

class BaaniSources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            BaaniTile(data[index].title),
            Divider(height: 0),
          ],
        );
      },
    );
  }
}

class BaaniTile extends StatefulWidget {
  final String name;

  const BaaniTile(this.name);

  @override
  State<StatefulWidget> createState() => BaaniTileState();
}

class BaaniTileState extends State<BaaniTile> {
  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: playing ? Icon(Icons.pause) : Icon(Icons.play_arrow),
      title: Text('${widget.name}'),
      contentPadding: EdgeInsets.all(5),
      onTap: () {
        setState(() {
          playing = !playing;
        });
      },
    );
  }
}
