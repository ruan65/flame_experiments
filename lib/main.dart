import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flame Exp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: StartScreen(),
    );
  }
}

navigateTo(BuildContext context, Widget route) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => route));
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FlatButton(
            child: Text('Start game'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Start game'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Start game'),
            onPressed: () {},
          ),

        ],
      ),
    );
  }
}

//class FlameScreen1 extends StatelessWidget {
//
//  FlameScreen1();
//
//  @override
//  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays([]);
//    return Scaffold(
//      body: FlameGamePad(storage, MediaQuery.of(context).size),
//    );
//  }
//}

