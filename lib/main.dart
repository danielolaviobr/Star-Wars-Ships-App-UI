import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_wars/ships_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShipsScreen(),
    );
  }
}
