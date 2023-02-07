import 'package:flutter/material.dart';

class LearnWidget extends StatelessWidget {
  LearnWidget({super.key});

  final lists = List.generate(5, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Learn all flutter widgets in just one day!',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),

            Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                    itemCount: lists.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(children: [
                          Box(text: 'Box_ $index'),
                          const SizedBox(
                            height: 15,
                          )
                        ]),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String text;
  const Box({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 200,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.green.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.cover,
            child: Image.asset('images/forest.jpg')));
  }
}
