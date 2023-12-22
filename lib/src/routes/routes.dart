import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_pages.dart';
import 'package:componentes/src/pages/card_pages.dart';
import 'package:componentes/src/pages/animated_container.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => const HomePage(),
    "alert": (BuildContext context) => const AlertPage(),
    "avatar": (BuildContext context) => const AvatarPage(),
    "card": (BuildContext context) => const CardPage(),
    "AnimatedContainer": (BuildContext context) =>
        const AnimatedContainerPage(),
  };
}
