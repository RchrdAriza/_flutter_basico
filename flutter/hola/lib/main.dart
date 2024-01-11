import 'package:flutter/material.dart';
// import 'package:hola/presentation/screens/counters//counter_screen.dart';
import 'package:hola/presentation/screens/counters/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final int clickCounter = 0;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple),
      home: const CounterFunctionsScreen(),
    );
  }
}
