import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeNaviBar(cmd1: () {}, cmd2: () {}, cmd3: () {}),
      body: Text('Sup'),
    );
  }
}

class HomeNaviBar extends BottomAppBar {
  HomeNaviBar({Key key, Function cmd1, Function cmd2, Function cmd3})
      : super(
          key: key,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              NaviButton(
                icon: FontAwesomeIcons.heart,
                onPressed: cmd1,
                text: 'Home',
                size: 23,
              ),
              NaviButton(
                icon: FontAwesomeIcons.compass,
                onPressed: cmd2,
                text: 'Explore',
                size: 23,
              ),
              NaviButton(
                icon: FontAwesomeIcons.user,
                onPressed: cmd3,
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
                      FaIcon(icon, color: Colors.grey[600], size: size),
                      Text(text ?? '',
                          style: TextStyle(color: Colors.black, fontSize: 10.0))
                    ],
                  ),
                ),
                onTap: onPressed));
}
