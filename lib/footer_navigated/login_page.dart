import 'package:are_you_talented_too/login_navigated/about_app.dart';
import 'package:are_you_talented_too/login_navigated/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String ad = "";
  String soyad = "";

  void girisKontrol() {
    if (1 < ad.length && 1 < soyad.length) {
      var adSoyad = [];
      adSoyad.add(ad);
      adSoyad.add(soyad);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const SplashScreen(),
              settings: RouteSettings(arguments: adSoyad)));
      //Navigator.push(context, '/main_page' as Route<Object?>);
      //Navigator.push(context,MaterialPageRoute(builder: (context) => AboutApp()));
    }
    //else {Navigator.pushNamed(context, '/hata');}
  }

  void _adKaydet(String girilenAd) {
    setState(() {
      ad = girilenAd;
    });
  }

  void _soyadKaydet(String girilenSoyad) {
    setState(() {
      soyad = girilenSoyad;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool girisizni = false;

    if (1 < ad.length && 1 < soyad.length) {
      girisizni = true;
    } else {
      girisizni = false;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: const Text("are you talented too",
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Name :"),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  onChanged: (girilenAd) {
                    _adKaydet(girilenAd);
                  },
                  decoration: const InputDecoration(
                      hintText: "Must be at least two letters"),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                ),
              ),
              const Text("Surname :"),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  onChanged: (girilenSoyad) {
                    _soyadKaydet(girilenSoyad);
                  },
                  decoration: const InputDecoration(
                      hintText: "Must be at least two letters"),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                ),
              ),
              const Text("Are you interested in giving amateurs a chance?"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: girisizni ? girisKontrol : null,
                      style: ElevatedButton.styleFrom(backgroundColor: color1),
                      child: const Text(
                        "Why not!",
                        style: TextStyle(
                          color: color2,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const AlertDialog(
                            content: Text(
                              "Than go away and find yourself one!",
                              style: (TextStyle(
                                fontStyle: FontStyle.italic,
                              )),
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: color1),
                      child: const Text(
                        "Just proffessionals",
                        style: TextStyle(
                          color: color2,
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutApp()));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: color1),
                    child: const Text(
                      "About App",
                      style: TextStyle(
                        color: color2,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
