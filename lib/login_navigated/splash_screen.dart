import 'dart:async';
import 'package:are_you_talented_too/main.dart';
import 'package:are_you_talented_too/footer_navigated/main_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<dynamic> adSoyad = [];

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => MainPage(),
          settings: RouteSettings(arguments: adSoyad)));
    });
  }

  @override
  Widget build(BuildContext context) {
    adSoyad = ModalRoute.of(context)?.settings.arguments as List;

    return Scaffold(
      backgroundColor: color1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "say hi to",
              style: TextStyle(
                color: color2,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "fames of tomorrow",
              style: TextStyle(
                color: color2,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
