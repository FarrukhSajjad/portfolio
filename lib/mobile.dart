import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/socials.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  Widget _smallDisplay() {
    return SingleChildScrollView(
      controller: scrollController,
      child: Stack(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(244, 236, 230, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 100,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        hello,
                        hereIs,
                        whoIam(),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Call',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SelectableText('+923100124568'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Write',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SelectableText('farrukhsajjad1998@gmail.com'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Socials(),
                      SizedBox(
                        height: 20,
                      ),
                      Text('© 2021 by Farrukh.')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            // top: 100,
            child: Align(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FittedBox(
                                child: Text(
                                  'Muhammad Farrukh Sajjad',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SelectableText(
                            'Flutter Developer',
                            style: GoogleFonts.darkerGrotesque(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 15,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 90,
                            backgroundColor: Color.fromRGBO(189, 189, 189, 1),
                            backgroundImage:
                                AssetImage('assets/images/img.png'),
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MouseRegion(
                                onHover: (value) {
                                  setState(() {
                                    textColor = Colors.black;
                                    buttonColor = Colors.white;
                                  });
                                },
                                onExit: (value) {
                                  setState(() {
                                    textColor = Colors.white;
                                    buttonColor = Colors.blue;
                                  });
                                },
                                child: Tooltip(
                                  message: 'Resume will be downloaded...',
                                  preferBelow: false,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                      side: BorderSide(
                                        color: borderColor,
                                      ),
                                    ),
                                    onPressed: launchResume,
                                    color: buttonColor,
                                    child: Center(
                                      child: Text(
                                        'RESUME',
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              MouseRegion(
                                onHover: (value) {
                                  setState(() {
                                    projectButtonTextColor = Colors.white;
                                    projectButtonColor = Colors.blue;
                                    projectButtonBorderColor = Colors.blue;
                                  });
                                },
                                onExit: (value) {
                                  setState(() {
                                    projectButtonTextColor = Colors.black;
                                    projectButtonColor = Colors.white;
                                    projectButtonBorderColor = Colors.black;
                                  });
                                },
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: projectButtonBorderColor),
                                  ),
                                  onPressed: () {
                                    launch("https://github.com/FarrukhSajjad");
                                  },
                                  color: projectButtonColor,
                                  child: Center(
                                    child: Text(
                                      'PROJECTS',
                                      style: TextStyle(
                                          color: projectButtonTextColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                        url: "https://twitter.com/farrukhV2"),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          scrollController.position.animateTo(
            0,
            curve: Curves.decelerate,
            duration: Duration(seconds: 1),
          );
        },
        backgroundColor: Colors.red.withOpacity(0.6),
      ),
      body: _smallDisplay(),
    );
  }
}
