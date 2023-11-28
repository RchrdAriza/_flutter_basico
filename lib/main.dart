import "package:flutter/material.dart";
// import "src/pages/home_temp.dart";
// import "package:componentes/src/pages/home_page.dart";
import "package:componentes/src/pages/alert_page.dart";
// import "package:componentes/src/pages/avatar_pages.dart";
import "package:componentes/src/routes/routes.dart";


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Componentes app",
      debugShowCheckedModeBanner: false,
      // home: HomePageTemp(),
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ) {
        print('Ruta: ${ settings.name }');

        return MaterialPageRoute(
        builder: (BuildContext context) => const AlertPage()
        );
      },
    );
  }
}
