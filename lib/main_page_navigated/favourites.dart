import 'package:flutter/material.dart';
import '../main.dart';
import '../my_widgets.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("favourites",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),
      body: const Text("favourites"),
      persistentFooterButtons: [
        buildFooterButtons(context),
      ],
    );
  }
}
