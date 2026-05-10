import 'dart:io';

void main(){
  int choice = 1;
  double operand1 = 0.0;
  double operand2 = 0.0;
  String operator = "";
  double? result = 0.0;

  //function to do your basic calculations
  double? calculate(double operand1, double operand2, String operator){
    if(operator == "+"){
      return operand1 + operand2;
    } else if(operator == "-"){
      return operand1 - operand2;
    } else if(operator == "*" || operator.toLowerCase() == "x"){
      return operand1 * operand2;
    } else if (operator == "/" && operand2 == 0){
      return double.nan;
    } else if(operator == "/"){
      return operand1 / operand2;
    } else{
      return null;
    }
  }

  //since all number variables are of type double, this function formats possible integer values.
  String formatNumber(double number) {
    return number % 1 == 0
      ? number.toInt().toString()
      : number.toString();
  }

  //this gets the result from the calculations and prints the response to the user
  void getFeedbackFromCalculator(){
    result = calculate(operand1, operand2, operator);
    if (result?.isNaN == true) {
      print("Cannot divide by 0");
    } else if (result == null){
      print("Invalid Operator");
    } else{
      print("The result between ${formatNumber(operand1)} and ${formatNumber(operand2)} with operator ${operator} is: ${formatNumber(result!)}");
    }
  }


  //function to begin the process of getting users values for calculations.
  //also to get users choice of continuing or exiting.
  //the tryParse is to prevent the program from crashing and to make sure user enters a valid number.
  int beginCalculation(int choice){
    if(choice == 1){
      print("First number:");
      String? input1 = stdin.readLineSync();
      double? tempOperand1 = double.tryParse(input1 ?? "");
      if (tempOperand1 == null) {
        print("Invalid input for first number. Please enter a valid number.");
        return 1;
      }
      operand1 = tempOperand1;
      print("Second number:");
      String? input2 = stdin.readLineSync();
      double? tempOperand2 = double.tryParse(input2 ?? "");
      if (tempOperand2 == null) {
        print("Invalid input for second number. Please enter a valid number.");
        return 1;
      }
      operand2 = tempOperand2;
      print("Your Operator: +, -, /, {* or x or X}");
      operator = stdin.readLineSync()!;
      getFeedbackFromCalculator();
      return 1;
    } else if(choice == 2){
      print("Thank you and good bye");
      return 2;
    } else{
      print("Error!!!");
      return 1;
    }
  }

  print("What is your name?");
  String? name = stdin.readLineSync();

  print("\nWelcome ${name}. Good to have you here.");

  while(choice == 1){
    print("Please select one of the following options:\n");
    print("1. Calculate\n2. Exit\n\n.....");
    choice = int.parse(stdin.readLineSync()!);
    int value = beginCalculation(choice);
    choice = value;
  }
}