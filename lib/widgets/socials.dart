import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: SocialMediaButton.facebook(
              url: "https://facebook.com/farrukh.sajjad.12"),
          onPressed: () async {
            await launch("https://facebook.com/farrukh.sajjad.12");
          },
        ),
        IconButton(
          icon:
              SocialMediaButton.github(url: "https://github.com/FarrukhSajjad"),
          onPressed: () async {
            await launch("https://github.com/FarrukhSajjad");
          },
        ),
        IconButton(
          icon: SocialMediaButton.instagram(
              url: "https://www.instagram.com/mr.sajjad.jr/"),
          onPressed: () async {
            await launch("https://www.instagram.com/mr.sajjad.jr/");
          },
        ),
        IconButton(
          icon: SocialMediaButton.twitter(url: "https://twitter.com/farrukhV2"),
          onPressed: () async {
            await launch("https://twitter.com/farrukhV2");
          },
        ),
        IconButton(
          icon: SocialMediaButton.medium(
              url: "https://farrukhsajjad.medium.com/"),
          onPressed: () async {
            await launch("https://farrukhsajjad.medium.com/");
          },
        ),
      ],
    );
  }
}
