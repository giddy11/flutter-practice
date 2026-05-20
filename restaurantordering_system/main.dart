import 'food.dart';
import 'menu_item.dart';

void main() {
  Food friedRice = Food("Fried Rice", 3500, "Main Dish");
  MenuItem item2 = MenuItem("Chicken and Chips", 4500, "Fast Food");
  MenuItem item3 = MenuItem("Coca-Cola", 500, "Drink");
  MenuItem item4 = MenuItem("Ice Cream", 1500, "Dessert");
  MenuItem item5 = MenuItem("Pepper Soup", 3000, "Soup");

  item1.displayItem();
}