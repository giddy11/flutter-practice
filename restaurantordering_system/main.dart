import 'dart:io';

import 'drink.dart';
import 'enums.dart';
import 'food.dart';
import 'menu_item.dart';
import 'order.dart';

void main() {
  int? choice = 0;

   // ===== FOODS =====
  var friedRice = Food("Fried Rice", 3500, FoodCategory.main_dish, FoodSize.large.toString());

  var jollofRice = Food("Jollof Rice", 3000, FoodCategory.main_dish, FoodSize.medium.toString());

  var chickenWings = Food("Chicken Wings", 2500, FoodCategory.snack, FoodSize.small.toString());

  var beefBurger = Food("Beef Burger", 4000, FoodCategory.snack, FoodSize.medium.toString());

  var pepperSoup = Food("Pepper Soup", 4500, FoodCategory.main_dish, FoodSize.large.toString());

  var friedPlantain = Food("Fried Plantain", 1200, FoodCategory.snack, FoodSize.medium.toString());

  var suya = Food("Suya", 2000, FoodCategory.snack, FoodSize.small.toString());

  var grilledFish = Food("Grilled Fish", 5000, FoodCategory.main_dish, FoodSize.large.toString());


  // ===== DRINKS =====
  var coke = Drink("Coke", 500, FoodCategory.drink, FoodSize.small.toString(), true);

  var fanta = Drink("Fanta", 500, FoodCategory.drink, FoodSize.small.toString(), true);

  var sprite = Drink("Sprite", 500, FoodCategory.drink, FoodSize.small.toString(), true);

  var bottledWater = Drink("Bottled Water", 300, FoodCategory.drink, FoodSize.small.toString(), false);

  var maltDrink = Drink("Malt", 700, FoodCategory.drink, FoodSize.medium.toString(), true);

  var chapman = Drink("Chapman", 1500, FoodCategory.drink, FoodSize.medium.toString(), true);

  var energyDrink = Drink("Energy Drink", 1200, FoodCategory.drink, FoodSize.small.toString(), true);


  while(choice != 5){
    print("Welcome to our restaurant!\nPlease choose one of the following options:");
    print("1. View Menu");
    print("2. Add Item to Order");
    print("3. Remove Item from Order");
    print("4. Print Bill");
    print("5. Exit");

    choice = int.parse(stdin.readLineSync()!);

    if(choice == 1){
      
    }
  }
  
}