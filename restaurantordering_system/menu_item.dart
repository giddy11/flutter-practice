class MenuItem {
  // properties
  String name;
  int price;
  String category;

  // Constructors
  MenuItem(this.name, this.price, this.category);

  void displayItem(){
    print("Item Name: ${name}.\nCategory: ${category}.\nPrice: ${price}.");
  }

}