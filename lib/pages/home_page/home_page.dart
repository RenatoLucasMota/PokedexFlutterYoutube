import 'package:flutter/material.dart';
import 'package:pokedex_youtube/consts/conts_app.dart';
import 'package:pokedex_youtube/pages/home_page/widgets/app_bar_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double statusWidth = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            top: -(240 / 4.7),
            left: screenWidth - (240 / 1.6),
            child: Opacity(
              child: Image.asset(
                ConstsApp.blackPokeball,
                height: 240,
                width: 240,
              ),
              opacity: 0.1,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: statusWidth,
                ),
                AppBarHome(),
                Expanded(
                  child: Container(
                      child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      ),
                      ListTile(
                        title: Text('Pokemon'),
                      )
                    ],
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
