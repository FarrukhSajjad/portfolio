import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/constants.dart';

class ReuseableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(18),
            child: SelectableText(
              'Muhammad Farrukh Sajjad',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
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
                  child: Text(
                    'ABOUT ME',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  cursor: MouseCursor.defer,
                ),
                Tooltip(
                  message: 'Download Resume...',
                  child: TextButton(
                    child: Text(
                      'RESUME',
                      style: headerOptionsTextStyle,
                    ),
                    onPressed: launchResume,
                  ),
                ),
                TextButton(
                  child: Text(
                    'PROJECTS',
                    style: headerOptionsTextStyle,
                  ),
                  onPressed: () {
                    //    scrollController.createScrollPosition(ScrollPhysics(),ScrollContext(), scrollController.position)
                    scrollController.position.animateTo(
                      550,
                      curve: Curves.decelerate,
                      duration: Duration(seconds: 1),
                    );
                  },
                ),
                TextButton(
                  child: Text(
                    'CONTACT',
                    style: headerOptionsTextStyle,
                  ),
                  onPressed: () {
                    scrollController.position.animateTo(
                      1000,
                      curve: Curves.decelerate,
                      duration: Duration(seconds: 1),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
