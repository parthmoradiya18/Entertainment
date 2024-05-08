import 'package:entertainment/HomeScreen.dart';
import 'package:entertainment/Provider.dart';
import 'package:entertainment/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Provider_(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        'second': (context) => Second_screen(),
      },
    ),
  ));
}
