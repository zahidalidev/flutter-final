import 'package:flutter/material.dart';

import 'package:flutter_application_1/Widgets/Drawer.dart';
import 'package:flutter_application_1/Widgets/MyAppBar.dart';
import 'package:flutter_application_1/screens/Hero1.dart';
import 'package:flutter_application_1/screens/MyLongPressDraggable.dart';
import 'package:flutter_application_1/screens/MyScrollable.dart';

import 'package:flutter_application_1/screens/MyHero.dart';

// Zahid Ali Regestration Number 2018-CS-136

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Flutter Application',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Home page'),
      // initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // '/': (context) => PrimeDetectState(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/LongPressDraggable': (context) => HomeScreen(),
        '/MyScrollable': (context) => MyScrollable(),
        '/MyHero': (context) => MyHero(),
        '/Hero1': (context) => Hero1(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.65,
          child: DrawerWidget(),
        ),
        // imported from PrimeDetect
        body: MyLongPressDraggable());
  }
}
