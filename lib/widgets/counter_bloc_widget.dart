import 'package:flutter/material.dart';
import 'package:flutter_app/models/cunter_bloc.dart';
import 'package:flutter_app/widgets/product_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ProductType {
  String title;
  int price;

  ProductType({required this.title, required this.price});
}

class CounterBlocWidget extends StatelessWidget {
  final String text;
  const CounterBlocWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterCubit>();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CounterCubit, int>(builder: (context, state) {
                return Column(
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            style:
                                TextStyle(fontSize: 30, color: Colors.black54),
                            children: [
                              TextSpan(text: 'Why counter'),
                              TextSpan(
                                  text: ' app',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(text: '\n needed?')
                            ])),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '$state',
                      style: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    )
                  ],
                );
              }),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: counterBloc.decrement,
                      icon: const Icon(Icons.minimize)),
                  IconButton(
                      onPressed: counterBloc.increment,
                      icon: const Icon(Icons.add)),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Flexible(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(price: 455, title: 'Hamburger'),
                    ProductCard(price: 455, title: 'Hamburger'),
                    ProductCard(price: 455, title: 'Hamburger'),
                    ProductCard(price: 455, title: 'Hamburger'),
                    ProductCard(price: 455, title: 'Hamburger'),
                    ProductCard(price: 455, title: 'Hamburger'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
