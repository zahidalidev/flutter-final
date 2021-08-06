import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Drawer.dart';
import 'package:flutter_application_1/Widgets/MyAppBar.dart';

class Hero1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        child: DrawerWidget(),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/MyHero');
          },
          child: Hero(
              tag: "profile-image",
              child: Container(
                width: double.infinity,
                height: 200.0,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://opengraph.githubassets.com/0bb393e83d5396601cd1a3006d248e71b1143b036e9cc706f8d1b8e0b119c019/zahidalidev/react-native-cross-picker",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
