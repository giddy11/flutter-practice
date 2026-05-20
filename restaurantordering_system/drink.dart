import 'enums.dart';
import 'menu_item.dart';

class Drink extends MenuItem {
  String size;
  bool isCold;

  Drink(String name, double price, FoodCategory category, this.size, this.isCold) : super(name, price, category);

  void displayItem() {
    super.displayItem();
    print("Size: ${size}.");
    if(isCold){
      print("The drink temperature is cold");
    } else{
      print("The drink temperature is hot");
    }
  }
}