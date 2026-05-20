class Temperature {
  double celsius;

  // Normal constructors
  Temperature(this.celsius);

  // Named constructor for Fahrenheit
  Temperature.fromFahrenheit(double fahrenheit) : celsius = (fahrenheit - 32) * 5 / 9;

  // method to convert Celsius to Fahrenheit
  double toFahrenheit() => (celsius * 9 / 5) + 32;

  // Named constructor for kelvin
  Temperature.fromKelvin(double kelvin) : celsius = kelvin - 273.15;

  void display() {
    print("${celsius.toStringAsFixed(2)} °C");
  }
}