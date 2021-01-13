import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

var defaultfaceBookIconColor = Colors.white;
var defaultinstagramIconColor = Colors.white;
var defaultgithubIconColor = Colors.white;
var defaultlinkedinIconColor = Colors.white;
var defaulttwitterIconColor = Colors.white;
var defaultmediumIconColor = Colors.white;

var faceBookIconColor = Color.fromRGBO(66, 103, 178, 1);
var instagramIconColor = Color.fromRGBO(251, 173, 80, 1);
var githubIconColor = Color.fromRGBO(191, 67, 52, 1);
var linkedinIconColor = Color.fromRGBO(14, 118, 168, 1);
var twitterIconColor = Color.fromRGBO(29, 161, 242, 1);
var mediumIconColor = Color.fromRGBO(191, 67, 52, 1);

double socialIconsSize = 30;

const contactTextStyle = TextStyle(
  color: Colors.white,
);

const contactinfoIconColor = Colors.white;

launchResume() async {
  launch(
      "https://drive.google.com/file/d/1qowpkmop47k5qOiXKCNG0LDkqTKtYDY1/view?usp=sharing");
}

const headerOptionsTextStyle = TextStyle(color: Colors.black);

ScrollController scrollController = ScrollController();
