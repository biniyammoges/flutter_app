import 'package:flutter/material.dart';
import 'package:flutter_app/models/counter_model_provider.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  final String text;
  const Counter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context, listen: false);

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${counterModel.currentCounter}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: counterModel.decrement,
                    icon: const Icon(Icons.minimize)),
                IconButton(
                    onPressed: counterModel.increment,
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
