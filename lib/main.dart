import 'package:are_you_talented_too/footer_navigated/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color color1 = Color.fromRGBO(51, 102, 0, 1);
const Color color2 = Color.fromRGBO(192, 192, 192, 1);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      /*
      initialRoute: '/',
      routes: {
        '/login_page':(context)=>LoginPage(),
        '/about_app':(context)=>AboutApp(),
        '/main_page':(context)=>MainPage(),
      },
       */
      home: LoginPage(),
    );
  }
}
