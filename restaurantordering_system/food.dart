import 'enums.dart';
import 'menu_item.dart';

class Food extends MenuItem {
  String size;

  Food(String name, double price, FoodCategory category, this.size) : super(name, price, category);

  void displayItem() {
    super.displayItem();
    print("Size: ${size}.");
  }
}