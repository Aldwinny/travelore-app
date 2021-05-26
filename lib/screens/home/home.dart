import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelore/screens/home/heart.dart';
import 'package:travelore/screens/home/profile.dart';
import 'package:travelore/screens/home/travel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _current = Travel();
  int _active = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeNaviBar(
        _active,
        cmd1: () {
          setState(() {
            _current = Heart();
            _active = 1;
          });
        },
        cmd2: () => setState(() {
          _current = Travel();
          _active = 2;
        }),
        cmd3: () => setState(() {
          _current = Profile();
          _active = 3;
        }),
      ),
      body: _current,
    );
  }
}

class HomeNaviBar extends BottomAppBar {
  HomeNaviBar(int active,
      {Key key, Function cmd1, Function cmd2, Function cmd3})
      : super(
          key: key,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              NaviButton(
                icon: FontAwesomeIcons.heart,
                onPressed: cmd1,
                active: active == 1 ? true : false,
                text: 'Heart',
                size: 23,
              ),
              NaviButton(
                icon: FontAwesomeIcons.compass,
                onPressed: cmd2,
                active: active == 2 ? true : false,
                text: 'Explore',
                size: 23,
              ),
              NaviButton(
                icon: FontAwesomeIcons.user,
                onPressed: cmd3,
                active: active == 3 ? true : false,
                text: 'Library',
                size: 23,
              ),
            ],
          ),
        );
}

class NaviButton extends Expanded {
  NaviButton(
      {Key key,
      IconData icon,
      Function onPressed,
      double size,
      double raise,
      int flex = 1,
      bool active = false,
      String text})
      : super(
            key: key,
            child: InkWell(
                splashFactory: InkRipple.splashFactory,
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  padding: EdgeInsets.only(bottom: (raise ?? 0) + 8, top: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FaIcon(icon,
                          color: active ? Colors.red : Colors.grey[600],
                          size: size),
                      Text(text ?? '',
                          style: TextStyle(
                              color: active ? Colors.red : Colors.black,
                              fontSize: 10.0))
                    ],
                  ),
                ),
                onTap: onPressed));
}
