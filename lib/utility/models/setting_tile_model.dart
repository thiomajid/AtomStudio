// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';

class SettingTile {
  String title, route;
  IconData leadingIcon;
  IconData trailingIcon;

  SettingTile({
    required this.title,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.route,
  });
}
