import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var flatList = List.generate(10, (index) => index);

    return SafeArea(
      child: Column(children: [
        // ListView.builder(
        //   shrinkWrap: true,
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) =>
        //       Square(text: 'Gradient__Box__ ${flatList[index] + 1}'),
        //   itemCount: flatList.length,
        //   // scrollDirection: Axis.horizontal,
        // ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10))),
              Positioned(
                bottom: 0,
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10))),
              ),
              const Positioned(
                top: 50,
                right: 50,
                child: Text(
                  'text 2',
                  style: TextStyle(
                      backgroundColor: Colors.green, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                height: 200,
                width: 200,
                child: LayoutBuilder(builder: (context, constraint) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: constraint.biggest.height * 0.5,
                      left: constraint.biggest.width * 0.5,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.yellow,
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ]),
      /*ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(100, (index) => Text('${index + 1}')),
        ),*/
      /* Column(children: <Widget>[
          const Text('Hey Biniyam Moges',text
              style: TextStyle(
                  fontSize: 20, color: Colors.amber, fontFamily: 'bold')),
          const Text('How Are You Doing?'),
          const Text('Is this you first flutter app?'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text('row1'),
              Text('row2'),
              Text(
                'rorrw3',
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(),
              ),
            ],
          )
        ]),*/
      // drawer: const Drawer(child: Text('data')),
    );
  }
}
