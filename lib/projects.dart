import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/header.dart';


class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 218, 206, 1),
      body: Column(
        children: [
          ReuseableHeader(),
          Container(
            padding: EdgeInsets.only(top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                SizedBox(height: 15,),
                Text('Here are few of my projects...'),

                SizedBox(height: 15,),
                Container( height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/2,
                  child: Swiper(
                    autoplay: true,

                    itemWidth: MediaQuery.of(context).size.width/2,
                    itemHeight: MediaQuery.of(context).size.height/2,
                    itemCount: 3,
                    viewportFraction: 0.8,
                    scale: 0.9,
                    itemBuilder: (BuildContext ctx, int index){
                      return ProjectItem();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
// class Projects extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Color.fromRGBO(230, 218, 206, 1),
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Padding(
//           padding: EdgeInsets.only(top: 200),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 20,
//                     width: 20,
//                     color: Colors.blue,
//                   ),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Text(
//                     'Projects',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 ],
//               ),
//               Text('Here are few of my projects...'),
//               Swiper(
//                 itemCount: 1,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ProjectItem();
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
class ProjectItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(50),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Project name 1'),
                    Text('Role'),
                    Text('I am a paragraph')
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4.5,
              height: 400,
              child: Image.network(
                'https://raw.githubusercontent.com/FarrukhSajjad/airquality-flutterapp/master/assets/images/display.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
