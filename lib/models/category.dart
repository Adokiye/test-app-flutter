import 'package:flutter/material.dart';

class Category {
  String title;
  Icon icon;
  int jobNo;
  Function onPressed;
  Category({@required this.title, @required this.icon,
  @required this.onPressed, @required this.jobNo});
}