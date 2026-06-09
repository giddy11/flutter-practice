//Null Safety
//Null safety is a feature in Dart that helps prevent null reference errors by ensuring that variables cannot be null unless explicitly declared as nullable. This feature was introduced in Dart 2.12 and is now a core part of the language.

void main() {
  //Declaring a non-nullable variable
  String name = "John Doe";
  print("Name: $name");

  //Declaring a nullable variable
  String? nullableName = null;
  print("Nullable Name: $nullableName");

  //Using null-aware operators
  String? anotherNullableName = null;
  String defaultName = "Default Name";

  //Using the null-coalescing operator (??) to provide a default value if anotherNullableName is null
  String finalName = anotherNullableName ?? defaultName;
  print("Final Name: $finalName");

  int? nameLength = nullableName?.length;
  print("Length of Nullable Name: $nameLength");


  //! operator is used to assert that a value is not null. It will throw an error if the value is null.
  //is null. Uncommenting the line below will cause a runtime error.

  //Null safe that wont throw a runtime error
  String safeNonNullName = nullableName ?? "Default Name";
  print("Safe Non Null Name: $safeNonNullName!");
 
}