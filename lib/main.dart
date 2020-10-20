import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:news_app/networkService/api_service.dart';
import 'package:news_app/screens/landing_screen.dart';
import 'package:provider/provider.dart';

void main() {
  _setUpLogging();
  runApp(MyNewsApp());
}

void _setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
   print('${event.level.name}: ${event.time}: ${event.message}');
  });

}

class MyNewsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
       create: (_) => ApiService.create(),
       dispose: (_, ApiService service) => service.client.dispose(),
       child: MaterialApp(
         home: LandingScreen(),
       ),
    );
  }
}