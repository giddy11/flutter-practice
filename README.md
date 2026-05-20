You are to build a Dart console application that simulates a restaurant ordering system where a waiter takes orders from customers and prints a final bill.
 

Objectives:

Practice defining classes with private fields and getters
Understand encapsulation by controlling access to class properties
Apply inheritance to create specific menu item types
Work with a list of objects to manage order state

Requirements:
Your application must include the following steps:

Super Class: MenuItem

Create a class MenuItem with these private properties:

Name, Price and Category(DONE)
 

Getters

Expose all three fields for reading outside the class:

 

Display Method

Create a method displayItem() inside MenuItem that prints the item name, category, and price: (DONE)

 

Subclass: Food

Create a class Food that extends MenuItem:

PortionSize either as small, medium or large

 

Override displayItem

Override displayItem() in Food to also show portion size:

 

Subclass: Drink

Create a class Drink that extends MenuItem:

Size either as small, medium or large
isCold

 

Override displayItem

Override displayItem() in Drink to also show size and temperature:

wether cold or hot

 

Class: Order

Create a class Order with these private properties:

customerName
items (hint: List of Menu Items)
total

 

Getters

 

Add Item Method

Create a method addItem(MenuItem item) that adds the item to _items and updates _total:

 

Remove Item Method

Create a method removeItem(String name) that searches _items by name using a loop:

If found, subtract the item price from _total, remove it from the list, and print a success message
If not found, print an error message
 
Print Bill Method

Create a method printBill() that prints the customer name, each item using displayItem(), and the total amount due. After printing, clear _items and reset _total to 0 for the next customer.

 

Preset Menu

At the top of your main() function, create these objects of your choice before the loop starts:

NOTE: This is just an example, your objects must be different from these
 

Food jollofRice = Food('Jollof Rice', 2500, 'large'); 
Food friedRice = Food('Fried Rice', 2200, 'medium'); 
Food pepperSoup = Food('Pepper Soup', 3000, 'small'); 
Drink coldCoke = Drink('Coke', 500, 'small', true); 
Drink hotTea = Drink('Tea', 400, 'medium', false); 
Drink coldJuice = Drink('Orange Juice', 700, 'large', true);
 

Create one Order object to track the current customer session:

 

Main Menu Loop

Show this menu until the user exits:

 

1. View Menu
2. Add Item to Order
3. Remove Item from Order
4. Print Bill
5. Exit
 

Use a while loop and if/else if/else to handle each choice.

View Menu should call displayItem() on every preset menu object.

Add Item should show the menu, ask the user to pick a number, and use if/else if to match the choice to the correct object before calling addItem().

Remove Item should ask the user to type the item name and pass it to removeItem().

Print Bill should call printBill() on the current order.
 

User Input

Use stdin.readLineSync() for all input.

 

Criteria:

When I run your code, I should be able to:

View the full menu with item details including portion size or drink temperature
Add multiple items to the current order
Remove an item from the order by name
See an error when trying to remove an item that was not added
Print a bill showing every item and the total
Start a fresh order after the bill is printed
Exit and the program stops
 

Submission Note:

Code must run without errors

Must define a MenuItem base class with private fields and getters

Must define Food and Drink subclasses that extend MenuItem

Must define an Order class that manages a list of MenuItem objects

Must override displayItem() in both subclasses

Must use if/else for all validation and menu choices

Must use a while loop to run the menu until exit

Must use stdin.readLineSync() for input

Add comments explaining each class and method
Create a repository on your Github account

Add and Push your file changes to your GitHub repository and submit the repository URL

Ensure your repository is set to public so anyone with the link can view it
