import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:portfolio/widgets/header.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  Color buttonColor = Colors.blue;
  Color textColor = Colors.white;
  Color borderColor = Colors.blue;

  Color projectButtonColor = Colors.white;
  Color projectButtonTextColor = Colors.black;
  Color projectButtonBorderColor = Colors.black;

  scrollToProjects(DragUpdateDetails dragUpdate) {
    _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
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
                                            child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        18.0),
                                                side: BorderSide(
                                                  color: borderColor,
                                                ),
                                              ),
                                              onPressed: () {},
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
                                              onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String name;
  final String image;

  const ProjectWidget({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'Login/Register UI',
      'Air Quality Index App',
      'Breathing Excercise App',
      'Hashtags for Instagram',
    ];

    List<String> projectsImages = [
      'https://document-export.canva.com/yLen4/DAEH3MyLen4/25/thumbnail/sadhM7s-thxRDUfK1SyS_g-0001-15432700371.png',
      'https://document-export.canva.com/Ym30g/DAETAFYm30g/13/thumbnail/fLlVrlYJFz87Hhb1GqvCCg-0001-15432694670.png',
      'https://document-export.canva.com/PR6V4/DAEFKhPR6V4/55/thumbnail/H0m1ofaRkHjMu9jiD6TVog-0001-15432700197.png',
      'https://document-export.canva.com/MqEVc/DAETAHMqEVc/11/thumbnail/VZd2wJAUeZ7t9wuam7E1Xw-0001-15432665017.png',
    ];

    List<String> urls = [
      'https://github.com/FarrukhSajjad/coffeebrew-flutter',
      'https://github.com/FarrukhSajjad/airquality-flutterapp',
      'https://github.com/FarrukhSajjad/space-breathingexerciseapp-flutter',
      'https://github.com/FarrukhSajjad/hastagsforinstagram',
    ];
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width / 2,
      child: Swiper(
        autoplay: true,
        itemWidth: MediaQuery.of(context).size.width / 2.5,
        itemHeight: MediaQuery.of(context).size.height / 2.5,
        itemCount: names.length,
        viewportFraction: 0.6,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launch(urls[index]);
              },
              child: Container(
                color: Colors.green,
                child: GridTile(
                  footer: GridTileBar(
                    backgroundColor: Colors.black,
                    title: Text(names[index]),
                    subtitle: Text(
                      'by Farrukh Sajjad',
                      style: TextStyle(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  child: Image.network(
                    projectsImages[index],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
