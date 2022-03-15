import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/food.dart';

//  class FoodRepository {
//   Future<List<Recipe>> getFoods();
// }
// wordpress website api for blogs couldnt be used because the website tsl certificate got expired 
//so food api used 
 
class FoodRepository {
  Future<List<Recipe>> getFoods() async {
    var response = await http.get(
        Uri.parse('https://forkify-api.herokuapp.com/api/search?q=pizza#'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      // print(data);
      List<Recipe> recipes = Food.fromJson(data).recipes;
      return recipes;
    } else {
      throw Exception('failed');
    }
  }
}
