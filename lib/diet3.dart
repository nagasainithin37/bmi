import 'package:flutter/material.dart';

List<String> diet = [
  'Cucumber Detox Water (1 glass)',
  'Oats Porridge in Skimmed Milk (1 bowl)',
  'Skimmed Milk Paneer (100 grams)',
  'Mixed Vegetable Salad (1 katori)',
  'Dal(1 katori)Gajar Matar Sabzi (1 katori)',
  'Cut Fruits (1 cup) Buttermilk (1 glass)',
  'Tea with Less Sugar and Milk (1 teacup)',
  'Mixed Vegetable Salad (1 katori)',
  'Dal (1 katori) Lauki Sabzi (1 katori)'
];
List<String> time = [
  '6:30 AM',
  '8:00 AM',
  '12:00 PM',
  '2:00 PM',
  '2:10 PM',
  '4:00 PM',
  '5:30 PM',
  '8:50 PM',
  '9:00 PM'
];

class Diet3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diet"),
      ),
      body: SafeArea(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: diet.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                        time[index],
                        style: TextStyle(fontSize: 18),
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Text(
                        diet[index],
                        style: TextStyle(fontSize: 18),
                      )),
                    ],
                  ));
            }),
      ),
    );
  }
}
