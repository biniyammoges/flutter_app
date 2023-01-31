import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String text;

  const Square({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), 
          // shape: BoxShape.circle,
          color: Colors.deepPurpleAccent,
          gradient: const LinearGradient(colors: [Colors.deepPurple, Colors.deepPurpleAccent]),
          boxShadow:  const [BoxShadow(blurRadius: 7, spreadRadius: 20, color: Colors.black12, offset:  Offset(0.1, 0.2), blurStyle: BlurStyle.inner)]
           ),
          child: Center(child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 20),)),
          ),
          
    );
  }
}
