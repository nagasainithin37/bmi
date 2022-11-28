import 'package:flutter/material.dart';

//for underweight
List<String> imageNames = ['1.webp', '2.gif', '3.gif', '4.gif', '5.gif'];

class Exercises3 extends StatelessWidget {
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
                "Many exercises can help you lose weight.Some great choices for burning calories include walking, jogging, running, cycling, swimming, weight training, interval training, yoga, and Pilates.That said, many other exercises can also help boost your weight loss efforts.It’s most important to choose an exercise that you enjoy doing. This makes it more likely that you’ll stick to it long-term and see results.",
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
                        image: AssetImage(
                            'images/overweight/' + imageNames[index])),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
