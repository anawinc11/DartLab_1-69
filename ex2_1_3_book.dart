class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary; 
  double bonus;         

  FullTimeEmployee(String name, this.monthlySalary, this.bonus) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary + bonus; 
  }
}
class PartTimeEmployee extends Employee {
  double hourlyRate; 
  int hoursWorked;   

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked) : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("somchai (Full)", 30000.0, 5000.0),
    PartTimeEmployee("sommai (Part)", 150.0, 80),
    FullTimeEmployee("Aawin (Full))", 25000.0, 2000.0),
    PartTimeEmployee("Win (Part)", 120.0, 120),
  ];

  print("--- employee Salary ---");
  
  for (var employee in employees) {
    print("Name ${employee.name}");
    print("Salary: ${employee.calculateSalary()} Baht");
    print("---------------------------------");
  }
}