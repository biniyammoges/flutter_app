import 'package:flutter/material.dart';
import 'package:flutter_app/models/cunter_bloc.dart';
import 'package:flutter_app/widgets/counter_bloc_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterCubit(),
        child: const Scaffold(
          body: CounterBlocWidget(
            text: 'Counter App!',
          ),
        ));
  }
}
