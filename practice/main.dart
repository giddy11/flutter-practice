import 'temperature.dart';

void main() {
  var tempC = Temperature(25.0);
  var tempF = Temperature.fromFahrenheit(77.0);
  var tempK = Temperature.fromKelvin(298.15);
  tempC.display();
  print("In Fah: ${tempC.toFahrenheit().toStringAsFixed(2)}");
}