import 'package:flutter/material.dart';
import 'package:flutter_app/models/counter_model_provider.dart';
import 'package:flutter_app/widgets/state_widget.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_app/pages/home_page.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const Counter(text: 'Counter App!'),
    )));
  }
}
