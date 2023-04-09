import 'package:flutter/material.dart';
import '../main.dart';
import '../my_widgets.dart';

class Painting extends StatelessWidget {
  const Painting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("painting",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),

      body:ListView(
        children: [
          buildPaintingCaricature(myImage: Image.asset("assets/images/painting1.png",fit: BoxFit.fill,),  artistName: "Jack Paris", context: context)

        ],
      ) ,

      persistentFooterButtons: [
        buildFooterButtons(context),
      ],
    );
  }
}
