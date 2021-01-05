import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      'Muhammad Farrukh Sajjad',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MouseRegion(
                          child: Text('ABOUT ME'),
                          cursor: MouseCursor.defer,
                        ),
                        Text('RESUME'),
                        Text('PROJECTS'),
                        Text('CONTACTS'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 620,
                        color: Color.fromRGBO(230, 218, 206, 1),
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width / 2,
                        height: 620,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Card(
                      elevation: 15,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              color: Color.fromRGBO(244, 236, 230, 1),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            radius: 90,
                                            backgroundColor: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            backgroundImage: AssetImage(
                                                'assets/images/img.png'),
                                          ),
                                          SelectableText(
                                            "Farrukh\n Sajjad",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.blue,
                                            indent: 150,
                                            endIndent: 150,
                                            thickness: 1.8,
                                          ),
                                          SelectableText('Flutter Developer',
                                              style:
                                                  GoogleFonts.darkerGrotesque(
                                                fontSize: 30,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: IconButton(
                                            icon: SocialMediaButton.facebook(
                                                url:
                                                    "https://facebook.com/farrukh.sajjad.12"),
                                            onPressed: () async {
                                              await launch(
                                                  "https://facebook.com/farrukh.sajjad.12");
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: IconButton(
                                            icon: SocialMediaButton.github(
                                                url:
                                                    "https://github.com/FarrukhSajjad"),
                                            onPressed: () async {
                                              await launch(
                                                  "https://github.com/FarrukhSajjad");
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: IconButton(
                                            icon: SocialMediaButton.instagram(
                                                url:
                                                    "https://www.instagram.com/mr.sajjad.jr/"),
                                            onPressed: () async {
                                              await launch(
                                                  "https://www.instagram.com/mr.sajjad.jr/");
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: IconButton(
                                            icon: SocialMediaButton.twitter(
                                                url:
                                                    "https://twitter.com/farrukhV2"),
                                            onPressed: () async {
                                              await launch(
                                                  "https://twitter.com/farrukhV2");
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          child: IconButton(
                                            icon: SocialMediaButton.medium(
                                                url:
                                                    "https://farrukhsajjad.medium.com/"),
                                            onPressed: () async {
                                              await launch(
                                                  "https://farrukhsajjad.medium.com/");
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 35,
                                  left: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SelectableText(
                                      'Hello',
                                      style: TextStyle(
                                        fontSize: 70,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SelectableText(
                                      'Here\'s who I am & what I do',
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Row(
                                        children: [
                                          FlatButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      18.0),
                                              side: BorderSide(
                                                  color: Colors.blue),
                                            ),
                                            onPressed: () {},
                                            color: Colors.blue,
                                            child: Center(
                                              child: Text(
                                                'RESUME',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          FlatButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      18.0),
                                              side: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            onPressed: () {},
                                            color: Colors.white,
                                            child: Center(
                                              child: Text(
                                                'PROJECTS',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
