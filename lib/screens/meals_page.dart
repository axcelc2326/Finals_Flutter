import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/meal.dart';
import '../widgets/meal_card.dart';

class MealsPage extends StatefulWidget {
  @override
  _MealsPageState createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  List<Meal> _meals = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchMeals();
  }

  Future<void> fetchMeals() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      setState(() {
        _meals = data.map((meal) => Meal.fromJson(meal)).toList();
        _isLoading = false;
      });
    } else {
      throw Exception('Failed to load meals');
    }
  }

  void deleteMeal(String id) {
    setState(() {
      _meals.removeWhere((meal) => meal.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meals')),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _meals.length,
              itemBuilder: (ctx, i) => MealCard(
                meal: _meals[i],
                onDelete: deleteMeal,
              ),
            ),
    );
  }
}
