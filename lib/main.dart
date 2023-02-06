import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/learn_widget.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LearnWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
