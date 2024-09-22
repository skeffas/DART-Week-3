class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  // Method to display employee details
  void displayDetails() {
    print("Employee: $name, Salary: $salary");
  }
}

// Manager is a subclass of Employee
class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  // Method to display manager details (inherited and additional)
  @override
  void displayDetails() {
    print("Manager: $name, Salary: $salary, Department: $department");
  }
}

void main() {
  Manager manager = Manager("Alice", 8000, "HR");
  manager.displayDetails();
}