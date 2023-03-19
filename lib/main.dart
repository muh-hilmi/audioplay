import 'package:audioplay/view/home_screen.dart';
import 'package:audioplay/view/playerscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Spotify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.yellow,
          ),

      home: const HomeScreen(),
      // home: const PlayerScreen(),
    );
  }
}
