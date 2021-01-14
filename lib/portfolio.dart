import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/desktop.dart';
import 'package:portfolio/footer.dart';
import 'package:portfolio/mobile.dart';
import 'package:portfolio/widgets/header.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  void initState() {
    //Initialize the  scrollController
    scrollController = ScrollController();
    //print(scrollController.position.keepScrollOffset);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    // double _height = MediaQuery.of(context).size.height;
    if (_width > 500) {
      return Desktop();
    } else
      return Mobile();
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
