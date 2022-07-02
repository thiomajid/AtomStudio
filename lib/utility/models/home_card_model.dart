// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';

class HomeCardModel {
  String title;
  String description;
  String buttonText;
  String pageRoute;
  IconData icon;

  HomeCardModel({
    required this.title,
    required this.description,
    required this.buttonText,
    required this.pageRoute,
    required this.icon,
  });
}
