import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Drawer.dart';
import 'package:flutter_application_1/Widgets/MyAppBar.dart';

class MyHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        child: DrawerWidget(),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 70),
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/Hero1');
          },
          child: Hero(
            tag: "profile-image",
            child: CircleAvatar(
              maxRadius: 100.0,
              backgroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/C4D03AQFXB0tUPfnZzQ/profile-displayphoto-shrink_800_800/0/1619715535710?e=1633564800&v=beta&t=Nm7jD3i_W7t76q2-zQXHwfP4EQm7mayV_49bcbyH6So",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
