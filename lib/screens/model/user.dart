import 'package:flutter/material.dart';
import 'package:travelore/screens/model/constants.dart';

class User {
  String uid;
  String name;
  Image profilePicture = Constants.avatar;

  User(this.uid, this.name, {this.profilePicture});
}
