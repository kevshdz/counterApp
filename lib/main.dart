import 'package:flutter/material.dart';
import 'package:hello_app/screens/counter_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello App',
      theme: ThemeData(
        useMaterial3: true
      ),
      home: Scaffold(
        body: CounterScreen()
      ),
    );
  }
}