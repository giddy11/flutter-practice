import 'enums.dart';
import 'menu_item.dart';

/// The name of the restaurant food.
class Food extends MenuItem {
  String size;

  Food(String name, double price, FoodCategory category, this.size) : super(name, price, category);

  // displays the details of the food
  @override
  void displayItem() {
    super.displayItem();
    print("Size: ${size}.");
  }
}