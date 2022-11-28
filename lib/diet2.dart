import 'package:flutter/material.dart';

List<String> diet = [
  'Two slices 100% whole wheat toast with 2 tablespoons peanut butter +One banana +  Macronutrients: approximately 454 calories with 16 grams protein, 62 grams carbohydrates, and 18 grams fat',
  '1 cup grapes + 1 ounce (14) walnuts + Macronutrients: 290 calories, 5 grams protein, 31 grams carbohydrates, 19 grams fat',
  'Tuna wrap with one wheat flour tortilla, 1/2 can water-packed tuna (drained), 1 tablespoon mayonnaise, lettuce, and sliced tomato+ 1/2 sliced avocado +   Macronutrients: 496 calories, 27 grams protein, 28 grams carbohydrates, 132grams fat',
  '1 cup cottage cheese (1% fat) + 1/2 cup blueberries + Macronutrients: 205 calories, 29 grams protein, 17 grams carbohydrates, 3 grams fat',
  '1 1/2 cups whole wheat pasta + 1 cup tomato sauce + Small garden salad (1 cup mixed greens with one half cup cherry tomatoes topped with one tablespoon balsamic vinaigrette + Macronutrients: 472 calories, 18 grams protein, 91 grams carbohydrates, 8 grams fat'
];
List<String> time = [
  'Breakfast (8:00-8:30AM)',
  'Mid-Meal (11:00-11:30AM)',
  'Lunch (2:00-2:30PM)',
  'Evening (4:00-4:30PM)',
  'Dinner (8:00-8:30PM)'
];

class Diet2 extends StatelessWidget {
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
