import 'menu_item.dart';

class Order {
  String customerName;
  List<MenuItem> menuItems;
  double _total = 0;

  double get total => _total;

  Order(this.customerName, this.menuItems);

  void addItem(MenuItem item) {
    menuItems.add(item);
    _total -= item.price;
  }

  void removeItem(String name){
    for(MenuItem menuItem in menuItems){
      if(menuItem.name == name){
        _total -= menuItem.price;
        menuItems.remove(menuItem);
        print("${name} has been removed successfully.");
        return;
      }
    }

    print("Sorry, ${name} doesn't exist.");
  }

  void printBil(){
    print("Hello ${customerName}, Here is your bill:");
    int count = 1;

    for(MenuItem menuItem in menuItems){
      print("${count}.");
      menuItem.displayItem();
      count++;
    }

    print("Your amount to pay is: ${_total}");

    menuItems.clear();
    _total = 0;
  }
}