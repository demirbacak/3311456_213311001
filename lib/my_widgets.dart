import 'package:are_you_talented_too/footer_navigated/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'footer_navigated/profile_page.dart';
import 'main.dart';

  Widget buildNovelTalePoetry(
      {required String beginnig,
        required String artistName,
        required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                    beginnig,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                artistName,
                style: const TextStyle(
                  color: color2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text(
                        "We are gratefull for your kindness",
                        style: (TextStyle(
                          fontStyle: FontStyle.italic,
                        )),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: color1),
                child: const Text(
                  "donate to see all",
                  style: TextStyle(
                    color: color2,
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: color1),
                onPressed:  () {
    showDialog(
    context: context,
    builder: (context) => const AlertDialog(
    content: Text(
    "Added to favourites",
    style: (TextStyle(
    fontStyle: FontStyle.italic,
    )),
    ),
    ),
    );
    },
                icon: const Icon(FontAwesomeIcons.heart),
                label: const Text('add favourites',
                style: TextStyle(
                  color: color2
                ),),
              ),

            ],
          ),
        ],
      ),
    );
  }





Widget buildMainPageNavigation({
  required IconData myicon,
  required String pageName,
  required Widget mywidget,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return mywidget;
      }));
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                myicon,
                weight: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                pageName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: color2,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildCategory({
  required IconData myicon,
  required String categoryName,
  required Widget mywidget,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return mywidget;
      }));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(myicon),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                categoryName,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: color2,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildNavigationIcons({
  required IconData myicon,
  required String mytext,
  required Widget mywidget,
  required BuildContext context,
}) {
  return Column(
    children: [
      IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return mywidget;
          }));
        },
        icon: FaIcon(myicon),
      ),
      Text(
        mytext,
        style:
            const TextStyle(color: color2, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ],
  );
}

Widget buildFooterButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildNavigationIcons(
          myicon: FontAwesomeIcons.user,
          mytext: "profile",
          mywidget: const ProfilePage(),
          context: context),
     // buildNavigationIcons(myicon: FontAwesomeIcons.house, mytext: "main page", mywidget: const MainPage(), context: context),
      buildNavigationIcons(
          myicon: FontAwesomeIcons.arrowUpRightFromSquare,
          mytext: "log out",
          mywidget: const LoginPage(),
          context: context),
    ],
  );
}



Widget buildPaintingCaricature(
    {required Image myImage, required String artistName, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
    child: Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                      )
                    ]),
                child: myImage,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              artistName,
              style: const TextStyle(
                color: color2,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    content: Text(
                      "We are gratefull for your kindness",
                      style: (TextStyle(
                        fontStyle: FontStyle.italic,
                      )),
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: color1),
              child: const Text(
                "donate to see all",
                style: TextStyle(
                  color: color2,
                ),
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: color1),
              onPressed:  () {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    content: Text(
                      "Added to favourites",
                      style: (TextStyle(
                        fontStyle: FontStyle.italic,
                      )),
                    ),
                  ),
                );
              },
              icon: const Icon(FontAwesomeIcons.heart),
              label: const Text('add favourites',
              style: TextStyle(
                color: color2,
              ),),
            ),

          ],
        ),
      ],
    ),
  );
}
