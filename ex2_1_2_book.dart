class Temperature {
  double _celsius = 0.0;

  Temperature(double initialCelsius) {
    celsius = initialCelsius;
  }
  double get celsius => _celsius;
  set celsius(double value) {
    if (value < -273.15) {
      print("invalid celcies dont under -273.15");
    } else {
      _celsius = value;
    }
  }
  double get fahrenheit => (_celsius * 9 / 5) + 32;
}
void main() {

  var roomTemp = Temperature(25.0);
  print("celsius: ${roomTemp.celsius} °C");
  print("fahrenheit: ${roomTemp.fahrenheit} °F");
  print("------------------------------------");

  var extremeTemp = Temperature(-300.0); 
  print("fahrenheit: ${extremeTemp.fahrenheit} °F");
}