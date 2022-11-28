import 'package:flutter/material.dart';

//for underweight
List<String> imageNames = [
  '2.gif',
  '3.gif',
  '4.gif',
  '5.gif',
  '6.webp',
  '1.gif',
];

class Exercises2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercises")),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Expanded(
              child: Text(
                "Experts say there is no magic to exercise: You get out of it what you put in. That doesn't mean you have to work out for hours each day. It just means you need to work smart by following these few exercises consistently to maintain your normal weight and health.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: imageNames.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Image(
                        image:
                            AssetImage('images/normal/' + imageNames[index])),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
