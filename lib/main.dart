import 'package:flutter/material.dart';
import 'notification.dart';
import 'bottomNav.dart';
import 'start_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontFamily: 'Poppins'),
      ),
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: 'start',
    routes: {
      'start': (context) => const Start(),
      'bottom': (context) => const Home(),
      'notification': (context) => const Notify(),
      // 'home':(context)=>HomePage(),
    },
  ));
}
