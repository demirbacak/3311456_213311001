import 'package:flutter/material.dart';
import 'package:are_you_talented_too/my_widgets.dart';
import '../main.dart';

class Caricature extends StatelessWidget {
  const Caricature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("caricature",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),

      body:ListView(
        children: [
          buildPaintingCaricature(myImage: Image.asset("assets/images/caricature1.png",fit: BoxFit.fill,),  artistName: "Jack Paris", context: context)
        ],
      ) ,

      persistentFooterButtons: [
        buildFooterButtons(context),
      ],
    );
  }
}
