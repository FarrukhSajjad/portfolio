import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/contact_tile.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
      ),
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(15, 27, 35, 1),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'More About me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Hello I\'m Farrukh, a noob flutter developer, Dart & Web Tech. I make youtube videos at IndieClan sharing my flutter knowledge and journey.\n\nPEACE',
                      style: contactTextStyle,
                      textAlign: TextAlign.justify,
                    ),
                    ContactTile(
                      iconData: Icons.place_outlined,
                      info: 'Islamabad, Pakistan',
                    ),
                    ContactTile(
                      iconData: Icons.email_outlined,
                      info: 'farrukhsajjad1998@gmail.com',
                    ),
                    ContactTile(
                      iconData: Icons.phone_android_outlined,
                      info: '+923100124568',
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                // color: Colors.yellow,
                child: Column(
                  children: [
                    Text(
                      'Got a Project?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Let\'s Talk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                        right: 70,
                      ),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          )),
                      child: Center(
                        child: SelectableText(
                          'farrukhsajjad1998@gmail.com',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text(
              'Find me on',
              style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  onHover: (value) {
                    setState(() {
                      defaultfaceBookIconColor = faceBookIconColor;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      defaultfaceBookIconColor = Colors.white;
                    });
                  },
                  child: IconButton(
                    tooltip: 'Facebook',
                    iconSize: socialIconsSize,
                    icon: SocialMediaButton.facebook(
                        size: socialIconsSize,
                        url: "https://facebook.com/farrukh.sajjad.12"),
                    onPressed: () async {
                      await launch("https://facebook.com/farrukh.sajjad.12");
                    },
                    color: defaultfaceBookIconColor,
                  ),
                ),
                MouseRegion(
                  onHover: (value) {
                    setState(() {
                      defaultgithubIconColor = githubIconColor;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      defaultgithubIconColor = Colors.white;
                    });
                  },
                  child: IconButton(
                    tooltip: 'GitHub',
                    iconSize: socialIconsSize,
                    icon: SocialMediaButton.github(
                        size: socialIconsSize,
                        url: "https://github.com/FarrukhSajjad"),
                    onPressed: () async {
                      await launch("https://github.com/FarrukhSajjad");
                    },
                    color: defaultgithubIconColor,
                  ),
                ),
                MouseRegion(
                  onHover: (value) {
                    setState(() {
                      defaultinstagramIconColor = instagramIconColor;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      defaultinstagramIconColor = Colors.white;
                    });
                  },
                  child: IconButton(
                    tooltip: 'Instagram',
                    iconSize: socialIconsSize,
                    icon: SocialMediaButton.instagram(
                        size: socialIconsSize,
                        url: "https://www.instagram.com/mr.sajjad.jr/"),
                    onPressed: () async {
                      await launch("https://www.instagram.com/mr.sajjad.jr/");
                    },
                    color: defaultinstagramIconColor,
                  ),
                ),
                MouseRegion(
                  onHover: (value) {
                    setState(() {
                      defaulttwitterIconColor = twitterIconColor;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      defaulttwitterIconColor = Colors.white;
                    });
                  },
                  child: IconButton(
                    tooltip: 'Twitter',
                    iconSize: socialIconsSize,
                    icon: SocialMediaButton.twitter(
                        size: socialIconsSize,
                        url: "https://twitter.com/farrukhV2"),
                    onPressed: () async {
                      await launch("https://twitter.com/farrukhV2");
                    },
                    color: defaulttwitterIconColor,
                  ),
                ),
                MouseRegion(
                  onHover: (value) {
                    setState(() {
                      defaultmediumIconColor = mediumIconColor;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      defaultmediumIconColor = Colors.white;
                    });
                  },
                  child: IconButton(
                    tooltip: 'Medium',
                    iconSize: socialIconsSize,
                    icon: SocialMediaButton.medium(
                        size: socialIconsSize,
                        url: "https://farrukhsajjad.medium.com/"),
                    onPressed: () async {
                      await launch("https://farrukhsajjad.medium.com/");
                    },
                    color: defaultmediumIconColor,
                  ),
                ),
                MouseRegion(
                  onHover: (value) {
                    setState(() {
                      defaultlinkedinIconColor = linkedinIconColor;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      defaultlinkedinIconColor = Colors.white;
                    });
                  },
                  child: IconButton(
                    tooltip: 'LinkedIn',
                    iconSize: socialIconsSize,
                    icon: SocialMediaButton.linkedin(
                        size: socialIconsSize,
                        url:
                            "https://www.linkedin.com/in/farrukh-sajjad-673654158/"),
                    onPressed: () async {
                      await launch(
                          "https://www.linkedin.com/in/farrukh-sajjad-673654158/");
                    },
                    color: defaultlinkedinIconColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
