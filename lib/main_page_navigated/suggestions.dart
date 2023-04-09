import 'package:flutter/material.dart';
import '../main.dart';
import '../my_widgets.dart';

class Suggestios extends StatelessWidget {
  const Suggestios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("suggestions",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: " We care about your opinions."),
              keyboardType: TextInputType.text,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          content: Text(
                            "Thanks for feedback",
                            style: (TextStyle(
                              fontStyle: FontStyle.italic,
                            )),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: color1),
                    child: const Text(
                      "send",
                      style: TextStyle(
                        color: color2,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        buildFooterButtons(context),
      ],
    );
  }
}
