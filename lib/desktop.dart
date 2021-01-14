import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/footer.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/widgets/header.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Desktop extends StatefulWidget {
  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
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
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            ReuseableHeader(),
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
                                    SizedBox(
                                      height: 15,
                                    ),
                                    whoIam(),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Row(
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
                                              message:
                                                  'Resume will be downloaded...',
                                              preferBelow: false,
                                              child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          18.0),
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
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          MouseRegion(
                                            onHover: (value) {
                                              setState(() {
                                                projectButtonTextColor =
                                                    Colors.white;
                                                projectButtonColor =
                                                    Colors.blue;
                                                projectButtonBorderColor =
                                                    Colors.blue;
                                              });
                                            },
                                            onExit: (value) {
                                              setState(() {
                                                projectButtonTextColor =
                                                    Colors.black;
                                                projectButtonColor =
                                                    Colors.white;
                                                projectButtonBorderColor =
                                                    Colors.black;
                                              });
                                            },
                                            child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        18.0),
                                                side: BorderSide(
                                                    color:
                                                        projectButtonBorderColor),
                                              ),
                                              onPressed: () {
                                                //    scrollController.createScrollPosition(ScrollPhysics(),ScrollContext(), scrollController.position)
                                                scrollController.position
                                                    .animateTo(
                                                  550,
                                                  curve: Curves.decelerate,
                                                  duration:
                                                      Duration(seconds: 1),
                                                );
                                              },
                                              color: projectButtonColor,
                                              child: Center(
                                                child: Text(
                                                  'PROJECTS',
                                                  style: TextStyle(
                                                      color:
                                                          projectButtonTextColor,
                                                      fontWeight:
                                                          FontWeight.w600),
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
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red.withOpacity(0.1),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Here are few of my projects...'),
                  SizedBox(
                    height: 15,
                  ),
                  ProjectWidget(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
