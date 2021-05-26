import 'package:flutter/material.dart';
import 'package:travelore/screens/model/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 40.0),
          CircleAvatar(
            radius: 70.0,
            backgroundColor: Colors.grey,
            backgroundImage: Constants.avatar.image,
            foregroundImage: NetworkImage(
                'https://i.pinimg.com/564x/2c/8f/50/2c8f505af7e600c2584716217753ad70.jpg'),
          ),
          Text(
            'Aldwin',
            style: Constants.text,
          ),
        ],
      ),
    );
  }
}
