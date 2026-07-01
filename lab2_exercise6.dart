
const double pi = 3.14159;
double calculateSquare(double width,double height) => width*height;

double calculateTriangle(double base,double height) => 0.5*base*height;

double calculateCylinder(double radius,double height) {
  double lateralArea = 2*pi*radius*height;
  double baseArea = 2*pi*radius*radius;
  return lateralArea+baseArea;
}
void printArea(String shapeName, double p1, double p2, double Function(double, double) areaFormula) {
  double result = areaFormula(p1, p2);
  double roundedResult = (result *100).round()/100;
  
  print('The area of $shapeName = $roundedResult');
}

void main() {
  printArea('Rectangle (5.5 x 10.0)', 5.5, 10.0, calculateSquare);
  printArea('Triangle (6.0 x 4.0)', 6.0, 4.0, calculateTriangle);
  printArea('Cylinder (3.0 x 7.0)', 3.0, 7.0, calculateCylinder);
}