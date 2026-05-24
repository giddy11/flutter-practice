import 'menu_item.dart';

/// Manages a customer's order session, tracking items and total cost.
class Order {
  // Private fields for encapsulation
  String _customerName;
  List<MenuItem> _items = [];
  double _total = 0;

  // Getters to expose fields for reading
  String get customerName => _customerName;
  List<MenuItem> get items => _items;
  double get total => _total;

  /// Creates an Order for the given customer with an empty item list.
  Order(this._customerName);

  /// Adds a menu item to the order and updates the total.
  void addItem(MenuItem item) {
    _items.add(item);
    _total += item.price;
    print("${item.name} has been added to your order.");
  }

  /// Removes an item by name; prints an error if not found.
  void removeItem(String name) {
    for (MenuItem menuItem in _items) {
      if (menuItem.name.toLowerCase() == name.toLowerCase()) {
        _total -= menuItem.price;
        _items.remove(menuItem);
        print("${menuItem.name} has been removed successfully.");
        return;
      }
    }
    print("Sorry, '${name}' is not in your order.");
  }

  /// Prints the full bill and resets the order for the next customer.
  void printBill() {
    print("\n===== BILL FOR ${_customerName.toUpperCase()} =====");
    int count = 1;
    for (MenuItem menuItem in _items) {
      print("\nItem #${count}:");
      menuItem.displayItem();
      count++;
    }
    print("\nTotal Amount Due: ₦${_total.toStringAsFixed(2)}");
    print("=========================================\n");

    // Reset order for next customer
    _items.clear();
    _total = 0;
  }
}