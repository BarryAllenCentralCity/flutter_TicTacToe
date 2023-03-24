import 'package:flutter/material.dart';
import 'package:flutter14_tictactoe/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      color: Colors.lime,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      title: 'Tic Tac Toe',
      home: const HomeScreen(),
    );
  }
}


