class Food {
  String name;
  int price;
  String category;
  String size;

  Food(this.name, this.price, this.category, this.size);

    void displayItem(){
    print("Item Name: ${name}.\nCategory: ${category}.\nPrice: ${price}.");
  }
}