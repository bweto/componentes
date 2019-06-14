import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/screens/alert_screen.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Home(),
      initialRoute: '/',
      routes: getAppLocationRoutes(),
      onGenerateRoute: (RouteSettings settings) => MaterialPageRoute(builder: (BuildContext context) => AlertScreen())
    );
  }
}