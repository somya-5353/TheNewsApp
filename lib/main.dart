import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() {
  _setUpLogging();
  runApp(MyApp());
}

void _setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
   print('${event.level.name}: ${event.time}: ${event.message}');
  });

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    );
  }
}