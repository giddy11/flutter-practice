//Higher Order Functions
//They are functions that can take other functions as arguments or return functions as results.

void main() {

  //Example of a higher-order function that takes another function as an argument
  void performOperation(int a, int b, Function operation) {
    int result = operation(a, b);
    print("Result: $result");
  }

  //Example of a simple addition function
  int add(int x, int y) {
    return x + y;
  }

  //Using the higher-order function to perform addition
  performOperation(5, 3, add);

  //Example of a higher-order function that returns another function
  Function createMultiplier(int multiplier) {
    return (int value) => value * multiplier;
  }

  //Creating a multiplier function that multiplies by 2
  var doubleValue = createMultiplier(2);
  
  //Using the multiplier function
  print("Double of 4: ${doubleValue(4)}");
}