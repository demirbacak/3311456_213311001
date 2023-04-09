import 'package:flutter/material.dart';
import '../main.dart';
import '../my_widgets.dart';

class Novel extends StatelessWidget {
  const Novel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("novel",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),

      body:ListView(
        children: [
          buildNovelTalePoetry(beginnig: "    Mrs Cole's biggest dream was too see her three daughters in rich marriages...", artistName: "Jane Augusten", context: context),

        ],
      ) ,

      persistentFooterButtons: [
               buildFooterButtons(context),
      ],
    );
  }
}
