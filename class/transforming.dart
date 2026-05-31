//Transforming
//Transforming a list of strings to a list of integers
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  //Square each number in the list
  List<int> squaredNumbers = numbers.map((num) => num * num).toList(); //why tolist() is used here? because map() returns an Iterable, and we need to convert it back to a List to use it as a List.
  //what is Iterable? An Iterable is a collection of elements that can be accessed sequentially. It is a more general type than List, and it does not have all the methods that a List has. For example, an Iterable does not have the length property or the [] operator for accessing elements by index. However, it can be used in a for loop or with the map() method to transform its elements.

  print(squaredNumbers);
}