import 'enums.dart';

class MenuItem {
  // properties
  String _name;
  double _price;
  FoodCategory _category;

  String get name => _name;
  double get price => _price;
  FoodCategory get category => _category;

  // Constructors
  MenuItem(this._name, this._price, this._category);

  void displayItem(){
    print("Item Name: ${_name}.\nCategory: ${_category}.\nPrice: ${_price}.");
  }

}