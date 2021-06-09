import 'package:flutter/material.dart';

class Constants {
  static final avatar = Image.asset('assets/avatar_placeholder.png');
}

ClipRRect temp = ClipRRect(
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50.0), bottomRight: Radius.circular(50.0)),
    child: Container(
        height: 450.0, width: double.infinity, color: Colors.pink[100]));
