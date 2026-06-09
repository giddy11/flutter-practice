//Filter
// The filter method is used to create a new list containing only the elements that satisfy a certain condition. It takes a function as an argument, which is applied to each element of the list. If the function returns true for an element, that element is included in the new list; otherwise, it is excluded.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Filter out even numbers
  List<int> evenNumbers = numbers.where((num) => num % 2 == 0).toList();

  print(evenNumbers); // Output: [2, 4, 6, 8, 10]

  // Filter out numbers greater than 5
  List<int> greaterThanFive = numbers.where((num) => num > 5).toList();

  print(greaterThanFive); // Output: [6, 7, 8, 9, 10]
}