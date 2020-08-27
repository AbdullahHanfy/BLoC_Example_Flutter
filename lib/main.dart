import 'package:flutter/material.dart';
import './ui/screens/counter/counter_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Example',
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
