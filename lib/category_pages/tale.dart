import 'package:flutter/material.dart';
import '../main.dart';
import '../my_widgets.dart';

class Tale extends StatelessWidget {
  const Tale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("tale",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          buildNovelTalePoetry(
              beginnig:
                  "    Long long time ago on a far away land. There was an old king loved by his people but hasn't any child. He decided to find some one to rule after him...",
              artistName: "Christopher Tallking",
              context: context),
        ],
      ),
      persistentFooterButtons: [
        buildFooterButtons(context),
      ],
    );
  }
}
