import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'games/WidgetOverlayExample.dart';
import 'games/flare_anim_component.dart';
import 'games/game1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Flame.images.loadAll(<String>[
    'png/agile-fly-1.png',
  ]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    ),
  );
}

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
            child: Text('Start game 1'),
            onPressed: () => navigateTo(context, Game1().widget),
          ),
          FlatButton(
            child: Text('Widget Overlay Example'),
            onPressed: () => navigateTo(context, OverlayGame().widget),
          ),
          FlatButton(
            child: Text('Start game 3'),
            onPressed: () => navigateTo(context, FlareBobGame().widget),
          ),
        ],
      ),
    );
  }
}
