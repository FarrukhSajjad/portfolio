import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    );
  }
}
