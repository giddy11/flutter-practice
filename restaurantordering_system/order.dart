import 'menu_item.dart';

class Order {
  String customerName;
  List<MenuItem> menuItems;
  int total = 0;

  Order(this.customerName, this.menuItems, this.total);
  // Order(this.customerName, this.menuItems);

  // int get total => 0;
  // set dia(int num) {
  //   total++;
  // }

  void addItem(MenuItem item) {
    menuItems.add(item);
    total++;
  }
}