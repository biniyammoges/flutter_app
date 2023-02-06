import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final String svgName;
  final String title;
  final int price;
  const ProductCard(
      {Key? key,
      required this.title,
      required this.price,
      this.svgName = 'images/burger.svg'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints size) {
      return SizedBox(
          height: 200,
          width: 200,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.12),
                            spreadRadius: 1,
                          )
                        ])),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SvgPicture.asset(svgName, width: 130)),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(
                              style: const TextStyle(color: Colors.black87),
                              children: [
                            TextSpan(
                                text: '$price',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const TextSpan(text: '/birr')
                          ]))
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  right: 5,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      )))
            ],
          ));
    });
  }
}
