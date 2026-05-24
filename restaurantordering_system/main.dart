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

  // Build a numbered list of all preset menu items for easy reference
  List<MenuItem> menu = [
    friedRice,      // 1
    jollofRice,     // 2
    chickenWings,   // 3
    beefBurger,     // 4
    pepperSoup,     // 5
    friedPlantain,  // 6
    suya,           // 7
    grilledFish,    // 8
    coke,           // 9
    fanta,          // 10
    sprite,         // 11
    bottledWater,   // 12
    maltDrink,      // 13
    chapman,        // 14
    energyDrink,    // 15
  ];

  // Ask for customer name and create one Order object to track the session
  print("Please enter the customer's name:");
  String customerName = stdin.readLineSync()!;
  Order order = Order(customerName);

  // Main menu loop — runs until the user chooses to exit (option 5)
  while (choice != 5) {
    print("\nWelcome to our restaurant!\nPlease choose one of the following options:");
    print("1. View Menu");
    print("2. Add Item to Order");
    print("3. Remove Item from Order");
    print("4. Print Bill");
    print("5. Exit");

    choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (choice == 1) {
      // Display every preset menu item using its displayItem() method
      print("\n===== MENU =====");
      int index = 1;
      for (MenuItem item in menu) {
        print("\n[${index}]");
        item.displayItem();
        index++;
      }
      print("================\n");

    } else if (choice == 2) {
      // Show menu with numbers, ask user to pick one and add it to the order
      print("\n===== MENU =====");
      int index = 1;
      for (MenuItem item in menu) {
        print("\n[${index}]");
        item.displayItem();
        index++;
      }
      print("================");
      print("Enter the number of the item you want to add:");

      int? itemChoice = int.tryParse(stdin.readLineSync()!) ?? 0;

      if (itemChoice >= 1 && itemChoice <= menu.length) {
        order.addItem(menu[itemChoice - 1]);
      } else {
        print("Invalid choice. Please enter a number between 1 and ${menu.length}.");
      }

    } else if (choice == 3) {
      // Ask for item name and remove it from the order
      print("Enter the name of the item you want to remove:");
      String itemName = stdin.readLineSync()!;
      order.removeItem(itemName);

    } else if (choice == 4) {
      // Print the full bill and reset the order for the next customer
      if (order.items.isEmpty) {
        print("No items in the order yet.");
      } else {
        order.printBill();
      }

    } else if (choice != 5) {
      print("Invalid option. Please choose a number between 1 and 5.");
    }
  }

  print("Thank you for visiting! Goodbye.");
}