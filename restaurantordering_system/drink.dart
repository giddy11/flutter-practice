import 'enums.dart';
import 'menu_item.dart';

class Drink extends MenuItem {
  String size;
  bool isCold;

  Drink(String name, double price, FoodCategory category, this.size, this.isCold) : super(name, price, category);
}