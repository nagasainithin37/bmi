import 'package:flutter/material.dart';

//for underweight
List<String> imageNames = ['1.webp', '2.webp', '3.webp', '4.webp'];

class Exercises1 extends StatelessWidget {
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
                "Working out might help you lose weight, but there are also routines that can help you gain weight. To make things easier, we've compiled a list of ${imageNames.length} exercises that you must incorporate in any weight-gain regimen.",
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
                    child:
                        Image(image: AssetImage('images/' + imageNames[index])),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
