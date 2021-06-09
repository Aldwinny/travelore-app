import 'package:flutter/material.dart';
import 'package:travelore/shared/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _login = true;
  String uid;
  String _name = 'User';
  Image _profile_picture = Image.network(
      'https://i.pinimg.com/564x/2c/8f/50/2c8f505af7e600c2584716217753ad70.jpg');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: Constants.avatar.image,
                  foregroundImage: _profile_picture.image,
                ),
                SizedBox(height: 5.0),
                Text(
                  _name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 30.0),
              ],
            ),
            FlatDivider(),
            PinkListTile(
              onTap: () {},
              leading: Icon(Icons.backpack_outlined),
              title: Text('Travel History'),
            ),
            FlatDivider(),
            PinkListTile(
              onTap: () {},
              leading: Icon(Icons.list_alt_outlined),
              title: Text('Bucketlist'),
            ),
            FlatDivider(),
            SizedBox(height: 30.0),
            FlatDivider(),
            PinkListTile(
              onTap: () {},
              leading: Icon(Icons.supervised_user_circle_outlined),
              title: Text('About us'),
            ),
            FlatDivider(),
            PinkListTile(
              onTap: () {},
              leading: Icon(Icons.coffee_maker_outlined),
              title: Text('App Version'),
            ),
            FlatDivider(),
            _login
                ? PinkListTile(
                    onTap: () {},
                    leading: Icon(Icons.logout_outlined),
                    title: Text('Logout'),
                  )
                : PinkListTile(
                    onTap: () {},
                    leading: Icon(Icons.login_outlined),
                    title: Text('Login'),
                  ),
            FlatDivider(),
          ],
        ),
      ),
    );
  }
}

class PinkListTile extends InkWell {
  PinkListTile(
      {Key key, Function onTap, Widget leading, Widget trailing, Widget title})
      : super(
          key: key,
          onTap: onTap ?? () {},
          splashFactory: InkRipple.splashFactory,
          splashColor: Colors.pink[100],
          focusColor: Colors.pink[100],
          hoverColor: Colors.pink[50],
          highlightColor: Colors.pink[100],
          child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            leading: leading,
            trailing: trailing,
            title: title,
          ),
        );
}

class FlatDivider extends Divider {
  FlatDivider()
      : super(
          height: 0.0,
          color: Colors.grey,
          thickness: 1.0,
        );
}
