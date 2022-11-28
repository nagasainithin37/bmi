import 'package:flutter/material.dart';

List<String> diet = [
  '3 paneer stuffed besan cheela + green chutney + 1 cup curd + 3 cashews + 4 almonds + 2 walnuts',
  '1 apple smoothie with maple syrup',
  '1 cup masoor dal + 1 cup calocasia + 3 chapatti + 1/2 cup rice + 1 cup low curd + salad',
  '1 cup tomato soup with bread crumbs + 1 cup aloo chaat',
  '1 cup carrot peas vegetable +3 chapatti + salad'
];
List<String> time = [
  'Breakfast (8:00-8:30AM)',
  'Mid-Meal (11:00-11:30AM)',
  'Lunch (2:00-2:30PM)',
  'Evening (4:00-4:30PM)',
  'Dinner (8:00-8:30PM)'
];

class Diet1 extends StatelessWidget {
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
