import 'package:flutter/material.dart';

import '../constants.dart';

class ContactTile extends StatelessWidget {
  final IconData iconData;
  final String info;
  ContactTile({this.iconData, this.info});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: contactinfoIconColor,
      ),
      title: SelectableText(
        '$info',
        style: contactTextStyle,
      ),
    );
  }
}
