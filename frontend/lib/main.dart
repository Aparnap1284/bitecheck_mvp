import 'package:flutter/material.dart';

void main() {
  runApp(BiteCheckApp());
}

class BiteCheckApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NutritionScreen(),
    );
  }
}

class NutritionScreen extends StatelessWidget {
  final Map<String, dynamic> nutritionData = {
    "Sugar": {"calories": 387, "fat": 0, "protein": 0, "carbs": 100},
    "Salt": {"calories": 0, "fat": 0, "protein": 0, "carbs": 0},
    "Palm Oil": {"calories": 884, "fat": 100, "protein": 0, "carbs": 0}
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BiteCheck - Nutrition Info')),
      body: ListView(
        children: nutritionData.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            subtitle: Text("Calories: ${entry.value['calories']} kcal"),
          );
        }).toList(),
      ),
    );
  }
}
