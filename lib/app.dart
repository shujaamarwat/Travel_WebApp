import 'package:flutter/material.dart';

import 'backdrop.dart';
import 'fly_form.dart';
import 'sleep_form.dart';
import 'eat_form.dart';
import 'theme.dart';

class CraneApp extends StatefulWidget {
  @override
  _CraneAppState createState() => new _CraneAppState();
}

class _CraneAppState extends State<CraneApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crane',
      debugShowCheckedModeBanner: false,
      home: Backdrop(
        frontLayer: Container(),
        backLayer: <Widget> [
          FlyForm(),
          SleepForm(),
          EatForm(),
        ],
        frontTitle: Text('CRANE'),
        backTitle: Text('MENU'),
      ),
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      theme: kCraneTheme,
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name != '/') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (BuildContext context) => CraneApp(),
    fullscreenDialog: true,
  );
}