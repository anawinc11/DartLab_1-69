class Employee {
  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double salary;
  FullTimeEmployee(this.salary);

  @override
  double calculateSalary() {
    return salary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;
  PartTimeEmployee(this.hourlyRate, this.hoursWorked);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee(30000.0),
    PartTimeEmployee(150.0, 80),
  ];

  for (var employee in employees) {
    print('Salary: ${employee.calculateSalary()}');
  }
}