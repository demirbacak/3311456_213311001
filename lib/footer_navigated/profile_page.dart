import 'package:flutter/material.dart';
import '../main.dart';
import '../my_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("profile",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Name : ",
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(),
                keyboardType: TextInputType.text,
              ),
            ),
            const Text("Surname : "),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(),
                keyboardType: TextInputType.text,
              ),
            ),
            const Text("Tel : "),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(),
                keyboardType: TextInputType.number,
              ),
            ),
            const Text("e-mail : "),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const Text("Name : "),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(),
                keyboardType: TextInputType.text,
              ),
            ),
            const Text("Adress : "),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(),
                keyboardType: TextInputType.text,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text(
                        "Saved",
                        style: (TextStyle(
                          fontStyle: FontStyle.italic,
                        )),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: color1),
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: color2,
                  ),
                )),
          ]
          ),
        ),

      ]),
      persistentFooterButtons: [
        buildFooterButtons(context),
      ],
    );
  }
}
