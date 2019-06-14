import 'package:componentes/src/screens/card_screen.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/screens/alert_screen.dart';
import 'package:componentes/src/screens/avatar_screen.dart';
import 'package:componentes/src/screens/home_screen.dart';


Map<String, WidgetBuilder> getAppLocationRoutes(){
  return <String, WidgetBuilder>{
        '/'     : (BuildContext context) => Home(),
        'alert' : (BuildContext context) => AlertScreen(),
        'avatar': (BuildContext context) => AvatarScreen(), 'card' : (BuildContext context) => CardScreen()
      };
}
 